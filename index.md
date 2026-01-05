---
layout: landing
title: Welcome
---

<div class="hero hero--dark" style='background-image: url("/assets/images/hero-bg.jpg");'>
  <div class="hero__content">
    <h1>Welcome to {{ site.title }}</h1>
    <p>{{ site.author.bio }}</p>
    <div style="margin-top: 2rem;">
      <a class="button button--primary button--rounded button--lg" href="/projects/">View Projects</a>
      <a class="button button--secondary button--rounded button--lg" href="/articles/">Read Articles</a>
    </div>
  </div>
</div>

<style>
.hero {
  padding: 8rem 1rem;
  text-align: center;
  background-color: #1a1a1a;
  background-size: cover;
  background-position: center;
}

.hero__content {
  max-width: 800px;
  margin: 0 auto;
}

.hero h1 {
  font-size: 3rem;
  margin-bottom: 1rem;
  color: #ffffff;
}

.hero p {
  font-size: 1.3rem;
  color: #cccccc;
  margin-bottom: 2rem;
}

.button {
  display: inline-block;
  padding: 0.75rem 2rem;
  margin: 0.5rem;
  text-decoration: none;
  border-radius: 50px;
  font-weight: 500;
  transition: all 0.3s ease;
}

.button--primary {
  background-color: #3498db;
  color: white;
}

.button--primary:hover {
  background-color: #2980b9;
  transform: translateY(-2px);
}

.button--secondary {
  background-color: transparent;
  color: white;
  border: 2px solid white;
}

.button--secondary:hover {
  background-color: rgba(255, 255, 255, 0.1);
  transform: translateY(-2px);
}

@media (max-width: 768px) {
  .hero {
    padding: 4rem 1rem;
  }
  
  .hero h1 {
    font-size: 2rem;
  }
  
  .hero p {
    font-size: 1.1rem;
  }
}
</style>
