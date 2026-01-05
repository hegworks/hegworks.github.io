---
layout: page
title: Home
header: true
article_header:
  type: overlay
  theme: dark
  background_color: '#1a1a1a'
  height: 50vh
---

<div class="home-intro">
  <h1 class="home-title">{{ site.title }}</h1>
  <p class="home-description">{{ site.author.bio }}</p>
  
  <div class="home-buttons">
    <a class="button button--primary button--pill button--lg" href="/projects/">
      View Projects
    </a>
    <a class="button button--secondary button--pill button--lg" href="/articles/">
      Read Articles
    </a>
  </div>
</div>

<style>
.home-intro {
  text-align: center;
  padding: 3rem 1rem;
  max-width: 800px;
  margin: 0 auto;
}

.home-title {
  font-size: 2.5rem;
  margin-bottom: 1rem;
  font-weight: 700;
}

.home-description {
  font-size: 1.2rem;
  margin-bottom: 2rem;
  opacity: 0.9;
}

.home-buttons {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
  margin-top: 2rem;
}

@media (max-width: 768px) {
  .home-title {
    font-size: 2rem;
  }
  
  .home-description {
    font-size: 1.1rem;
  }
  
  .home-buttons {
    flex-direction: column;
    align-items: stretch;
  }
  
  .button {
    width: 100%;
  }
}
</style>
