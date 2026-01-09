export class TocDesktop {
  /* Tocbot options Ref: https://github.com/tscanlin/tocbot#usage */
  static options = {
    tocSelector: "#toc",
    contentSelector: ".content",
    ignoreSelector: "[data-toc-skip]",
    headingSelector: "h1, h2, h3, h4",
    orderedList: false,
    scrollSmooth: false,
    collapseDepth: 2,
    headingsOffset: 16 * 3, // 3rem (matches topbar height)
  };

  static refresh() {
    tocbot.refresh(this.options);
  }

  static init() {
    tocbot.init(this.options);
    this.initActiveHeadingObserver();
  }

  static initActiveHeadingObserver() {
    const headings = document.querySelectorAll(
      ".content h1, .content h2, .content h3, .content h4"
    );

    if (headings.length === 0) return; // No headings found

    const updateActiveHeading = () => {
      const headingsOffset = 48; // 3rem in pixels (matches TOC headingsOffset)
      let activeHeading = null;
      let maxTop = -Infinity;

      headings.forEach((heading) => {
        const rect = heading.getBoundingClientRect();
        // Find the heading closest to the trigger point (largest rect.top that is <= 48)
        if (rect.top <= headingsOffset && rect.top > maxTop) {
          activeHeading = heading;
          maxTop = rect.top;
        }
      });

      // Remove active class from all headings
      headings.forEach((h) => h.classList.remove("active-heading"));
      // Add active class to current heading
      if (activeHeading) {
        activeHeading.classList.add("active-heading");
      }
    };

    // Update on scroll
    window.addEventListener("scroll", updateActiveHeading, { passive: true });
    // Initial check
    updateActiveHeading();
  }
}
