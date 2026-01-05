---
layout: page
title: Articles
permalink: /articles/
---

<div class="articles-list">
  {% if site.articles.size > 0 %}
    {% for article in site.articles reversed %}
      <article class="article-item">
        <div class="article-item__container">
          {% if article.cover %}
          <div class="article-item__cover">
            <a href="{{ article.url | relative_url }}">
              <img src="{{ article.cover | relative_url }}" alt="{{ article.title }}">
            </a>
          </div>
          {% endif %}
          
          <div class="article-item__content">
            <h2 class="article-item__title">
              <a href="{{ article.url | relative_url }}">{{ article.title }}</a>
            </h2>
            
            <div class="article-item__info">
              {% if article.date %}
                <span class="article-item__date">{{ article.date | date: "%B %d, %Y" }}</span>
              {% endif %}
              {% if article.tags %}
                <span class="article-item__tags">
                  {% for tag in article.tags %}
                    <span class="tag">{{ tag }}</span>
                  {% endfor %}
                </span>
              {% endif %}
            </div>
            
            {% if article.excerpt %}
            <p class="article-item__excerpt">{{ article.excerpt | strip_html | truncatewords: 50 }}</p>
            {% endif %}
            
            <a href="{{ article.url | relative_url }}" class="article-item__readmore">Read More →</a>
          </div>
        </div>
      </article>
    {% endfor %}
  {% else %}
    <p class="no-items">No articles yet. Check back soon!</p>
  {% endif %}
</div>

<style>
.articles-list {
  max-width: 900px;
  margin: 2rem auto;
}

.article-item {
  margin-bottom: 3rem;
  padding-bottom: 3rem;
  border-bottom: 1px solid var(--border-color);
}

.article-item:last-child {
  border-bottom: none;
}

.article-item__container {
  display: flex;
  gap: 2rem;
  align-items: flex-start;
}

.article-item__cover {
  flex-shrink: 0;
  width: 250px;
  height: 180px;
  overflow: hidden;
  border-radius: 8px;
}

.article-item__cover img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease;
}

.article-item__cover:hover img {
  transform: scale(1.05);
}

.article-item__content {
  flex: 1;
}

.article-item__title {
  margin-top: 0;
  margin-bottom: 0.5rem;
  font-size: 1.8rem;
}

.article-item__title a {
  color: var(--text-color-d);
  text-decoration: none;
  transition: color 0.3s ease;
}

.article-item__title a:hover {
  color: var(--main-color-1);
}

.article-item__info {
  display: flex;
  flex-wrap: wrap;
  gap: 1rem;
  align-items: center;
  margin-bottom: 1rem;
  font-size: 0.9rem;
  color: var(--text-color-l);
}

.article-item__date {
  font-style: italic;
}

.article-item__tags {
  display: flex;
  gap: 0.5rem;
}

.article-item__tags .tag {
  padding: 0.2rem 0.6rem;
  background: var(--main-color-1);
  color: white;
  border-radius: 12px;
  font-size: 0.75rem;
}

.article-item__excerpt {
  color: var(--text-color-l);
  line-height: 1.7;
  margin-bottom: 1rem;
}

.article-item__readmore {
  display: inline-block;
  color: var(--main-color-1);
  text-decoration: none;
  font-weight: 500;
  transition: color 0.3s ease;
}

.article-item__readmore:hover {
  color: var(--main-color-2);
}

.no-items {
  text-align: center;
  color: var(--text-color-l);
  font-size: 1.2rem;
  margin-top: 3rem;
}

@media (max-width: 768px) {
  .article-item__container {
    flex-direction: column;
  }
  
  .article-item__cover {
    width: 100%;
    height: 200px;
  }
  
  .article-item__title {
    font-size: 1.5rem;
  }
}
</style>
