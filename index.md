---
layout: default
title: Home
---

<div class="home-container">
  <header class="home-header">
    <h1>Welcome to {{ site.title }}</h1>
    <p class="site-description">{{ site.description }}</p>
  </header>

  <div class="button-container">
    <a href="/projects/" class="home-button projects-button">
      <span class="button-icon">🚀</span>
      <span class="button-text">Projects</span>
      <span class="button-description">Explore my work and creations</span>
    </a>
    
    <a href="/articles/" class="home-button articles-button">
      <span class="button-icon">📝</span>
      <span class="button-text">Articles</span>
      <span class="button-description">Read my thoughts and writings</span>
    </a>
  </div>
</div>

<style>
.home-container {
  max-width: 800px;
  margin: 0 auto;
  padding: 40px 20px;
  text-align: center;
}

.home-header {
  margin-bottom: 60px;
}

.home-header h1 {
  font-size: 2.5em;
  margin-bottom: 10px;
  color: #333;
}

.site-description {
  font-size: 1.2em;
  color: #666;
}

.button-container {
  display: flex;
  gap: 30px;
  justify-content: center;
  flex-wrap: wrap;
}

.home-button {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 40px 30px;
  width: 250px;
  background: #f8f9fa;
  border: 2px solid #e0e0e0;
  border-radius: 12px;
  text-decoration: none;
  transition: all 0.3s ease;
  cursor: pointer;
}

.home-button:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 25px rgba(0,0,0,0.1);
  border-color: #007bff;
}

.projects-button:hover {
  border-color: #28a745;
}

.articles-button:hover {
  border-color: #17a2b8;
}

.button-icon {
  font-size: 3em;
  margin-bottom: 15px;
}

.button-text {
  font-size: 1.5em;
  font-weight: bold;
  color: #333;
  margin-bottom: 8px;
}

.button-description {
  font-size: 0.9em;
  color: #666;
}

@media (max-width: 600px) {
  .button-container {
    flex-direction: column;
    align-items: center;
  }
  
  .home-button {
    width: 100%;
    max-width: 300px;
  }
}
</style>
