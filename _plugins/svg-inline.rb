#!/usr/bin/env ruby
#
# Automatically inline SVG files referenced in markdown/html
# Converts <img src="*.svg"> to inline <svg> tags
# This allows CSS theming to apply to SVG content

Jekyll::Hooks.register :site, :post_write do |site|
  Jekyll.logger.info("SVG Inline Plugin:", "Starting SVG inlining...")
  
  # Process all HTML files in the output
  Dir.glob(File.join(site.dest, '**', '*.html')).each do |file_path|
    inline_svg_images(file_path, site.source)
  end
  
  Jekyll.logger.info("SVG Inline Plugin:", "SVG inlining complete")
end

def inline_svg_images(file_path, source_root)
  content = File.read(file_path)
  modified = false
  
  # Pattern 1: Handle <a> tags wrapping img with SVG sources (most common from markdown)
  content.gsub!(/<a[^>]*>\s*<img\s+src=["']([^"']*\.svg)["']([^>]*)>\s*<\/a>/i) do |match|
    svg_path = $1
    
    inlined = inline_svg(svg_path, source_root)
    if inlined
      modified = true
      inlined
    else
      match
    end
  end
  
  # Pattern 2: Find standalone img tags with SVG sources
  content.gsub!(/<img\s+src=["']([^"']*\.svg)["']([^>]*)>/i) do |match|
    svg_path = $1
    
    inlined = inline_svg(svg_path, source_root)
    if inlined
      modified = true
      inlined
    else
      match
    end
  end
  
  File.write(file_path, content) if modified
  
rescue => e
  Jekyll.logger.error("SVG Inline Plugin:", "Error processing #{file_path}: #{e.message}")
end

def inline_svg(svg_path, source_root)
  # Normalize the path
  svg_path = svg_path.gsub(%r{^/+}, '') # Remove leading slashes
  
  # Try to find the file
  possible_paths = [
    File.join(source_root, svg_path),
    File.join(source_root, 'assets', svg_path),
    File.join(source_root, 'assets', 'media', svg_path),
  ]
  
  full_path = possible_paths.find { |p| File.exist?(p) }
  
  return nil unless full_path && File.exist?(full_path)
  
  begin
    svg_content = File.read(full_path)
    
    # Remove XML declaration and DOCTYPE
    svg_content.gsub!(/<\?xml[^?]*\?>\s*/m, '')
    svg_content.gsub!(/<![^>]*>\s*/m, '')
    
    # Wrap in container div
    "<div class=\"svg-container\">#{svg_content}</div>"
  rescue => e
    Jekyll.logger.warn("SVG Inline Plugin:", "Could not read #{full_path}: #{e.message}")
    nil
  end
end
