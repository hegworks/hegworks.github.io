#!/usr/bin/env ruby
#
# Auto-wrap h1 sections with div.post-section in the final output

Jekyll::Hooks.register :site, :post_write do |site|
  # Process all post HTML files
  posts_dir = File.join(site.dest, 'posts')
  
  if Dir.exist?(posts_dir)
    Dir.glob(File.join(posts_dir, '**', 'index.html')).each do |file_path|
      wrap_h1_sections_in_file(file_path)
    end
  end
end

def wrap_h1_sections_in_file(file_path)
  content = File.read(file_path)
  
  # Find the <div class="content"> section and wrap h1s within it
  # Replace the content div with wrapped version
  content.gsub!(/(<div class="content">(.*?)<\/div>)/m) do |match|
    div_opening = '<div class="content">'
    div_closing = '</div>'
    inner_content = match[div_opening.length...-div_closing.length]
    
    wrapped = wrap_h1_sections(inner_content)
    "#{div_opening}#{wrapped}#{div_closing}"
  end
  
  File.write(file_path, content)
end

def wrap_h1_sections(content)
  # Split by h1 opening tags and wrap each section
  parts = content.split(/(<h1[^>]*>)/)
  
  result = []
  i = 0
  
  while i < parts.length
    # Skip empty parts
    if parts[i].empty?
      i += 1
      next
    end
    
    # If this is an h1 opening tag
    if parts[i].match?(/^<h1/)
      section = parts[i]  # h1 opening tag
      i += 1
      
      # Add h1 closing and content until next h1
      while i < parts.length && !parts[i].match?(/^<h1/)
        section += parts[i]
        i += 1
      end
      
      result << "<div class=\"post-section\">\n#{section}\n</div>\n"
    else
      result << parts[i]
      i += 1
    end
  end
  
  result.join
end
