---
layout: page
title: Projects
permalink: /projects/
---

<div class="projects-grid">
  {% if site.projects.size > 0 %}
    {% for project in site.projects %}
      <div class="project-card">
        {% if project.image %}
        <div class="project-card__image">
          <a href="{{ project.url | relative_url }}">
            <img src="{{ project.image | relative_url }}" alt="{{ project.title }}">
          </a>
        </div>
        {% endif %}
        
        <div class="project-card__content">
          <h2><a href="{{ project.url | relative_url }}">{{ project.title }}</a></h2>
          
          {% if project.excerpt %}
          <p class="project-card__excerpt">{{ project.excerpt | strip_html | truncatewords: 30 }}</p>
          {% endif %}
          
          <div class="project-card__meta">
            {% if project.client %}
            <div class="meta-item">
              <strong>Client:</strong> {{ project.client }}
            </div>
            {% endif %}
            
            {% if project.team %}
            <div class="meta-item">
              <strong>Team:</strong> {{ project.team }}
            </div>
            {% endif %}
            
            {% if project.technologies %}
            <div class="meta-item">
              <strong>Tech:</strong>
              <div class="tech-tags">
                {% for tech in project.technologies %}
                  <span class="tag">{{ tech }}</span>
                {% endfor %}
              </div>
            </div>
            {% endif %}
          </div>
          
          <a href="{{ project.url | relative_url }}" class="project-card__link">View Project →</a>
        </div>
      </div>
    {% endfor %}
  {% else %}
    <p class="no-items">No projects yet. Check back soon!</p>
  {% endif %}
</div>

<style>
.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 2rem;
  margin-top: 2rem;
}

.project-card {
  background: var(--card-background-color);
  border: 1px solid var(--border-color);
  border-radius: 8px;
  overflow: hidden;
  transition: all 0.3s ease;
}

.project-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0,0,0,0.3);
}

.project-card__image {
  width: 100%;
  height: 200px;
  overflow: hidden;
}

.project-card__image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease;
}

.project-card:hover .project-card__image img {
  transform: scale(1.05);
}

.project-card__content {
  padding: 1.5rem;
}

.project-card h2 {
  margin-top: 0;
  margin-bottom: 0.5rem;
  font-size: 1.5rem;
}

.project-card h2 a {
  color: var(--text-color-d);
  text-decoration: none;
}

.project-card h2 a:hover {
  color: var(--main-color-1);
}

.project-card__excerpt {
  color: var(--text-color-l);
  margin-bottom: 1rem;
  line-height: 1.6;
}

.project-card__meta {
  margin: 1rem 0;
  padding-top: 1rem;
  border-top: 1px solid var(--border-color);
}

.meta-item {
  margin-bottom: 0.5rem;
  font-size: 0.9rem;
  color: var(--text-color-l);
}

.tech-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-top: 0.3rem;
}

.tag {
  display: inline-block;
  padding: 0.2rem 0.6rem;
  background: var(--main-color-1);
  color: white;
  border-radius: 12px;
  font-size: 0.8rem;
}

.project-card__link {
  display: inline-block;
  margin-top: 1rem;
  color: var(--main-color-1);
  text-decoration: none;
  font-weight: 500;
  transition: color 0.3s ease;
}

.project-card__link:hover {
  color: var(--main-color-2);
}

.no-items {
  text-align: center;
  color: var(--text-color-l);
  font-size: 1.2rem;
  margin-top: 3rem;
}

@media (max-width: 768px) {
  .projects-grid {
    grid-template-columns: 1fr;
  }
}
</style>
