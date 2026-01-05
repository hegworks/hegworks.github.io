---
layout: default
title: Projects
permalink: /projects/
---

<div class="collection-page">
  <h1>Projects</h1>
  <p class="page-description">Check out my latest work and creations</p>

  <div class="items-grid">
    {% if site.projects.size > 0 %}
      {% for project in site.projects %}
        <div class="item-card">
          <h2><a href="{{ project.url | relative_url }}">{{ project.title }}</a></h2>
          {% if project.excerpt %}
            <p class="item-excerpt">{{ project.excerpt | strip_html | truncatewords: 30 }}</p>
          {% endif %}
          {% if project.date %}
            <p class="item-date">{{ project.date | date: "%B %d, %Y" }}</p>
          {% endif %}
        </div>
      {% endfor %}
    {% else %}
      <p class="no-items">No projects yet. Stay tuned!</p>
    {% endif %}
  </div>
</div>
