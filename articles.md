---
layout: default
title: Articles
permalink: /articles/
---

<div class="collection-page">
  <h1>Articles</h1>
  <p class="page-description">My thoughts, ideas, and writings</p>

  <div class="items-grid">
    {% if site.articles.size > 0 %}
      {% for article in site.articles %}
        <div class="item-card">
          <h2><a href="{{ article.url | relative_url }}">{{ article.title }}</a></h2>
          {% if article.excerpt %}
            <p class="item-excerpt">{{ article.excerpt | strip_html | truncatewords: 30 }}</p>
          {% endif %}
          {% if article.date %}
            <p class="item-date">{{ article.date | date: "%B %d, %Y" }}</p>
          {% endif %}
        </div>
      {% endfor %}
    {% else %}
      <p class="no-items">No articles yet. Stay tuned!</p>
    {% endif %}
  </div>
</div>
