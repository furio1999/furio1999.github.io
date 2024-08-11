---
permalink: /
author_profile: true
---


Hi! I am Fulvio Sanguigni! I am an [Italian National Phd](https://www.phd-ai.it/en/359-2/) student, part of [AImageLab](https://aimagelab.ing.unimore.it/imagelab/) at [University of Modena and Reggio Emilia](https://www.unimore.it/), supervised by [Marcella Cornia](https://aimagelab.ing.unimore.it/imagelab/person.asp?idpersona=90), [Lorenzo Baraldi](https://www.lorenzobaraldi.com/) and [Rita Cucchiara](https://aimagelab.ing.unimore.it/imagelab/person.asp?idpersona=1)
My research direction is focused on **Multimodal Generative AI**, mainly focused to 2D Image Editing.

The targets are:
- **Fashion Domain** Application to virtual try-on and garment editing, both clothed humans and in-shop garments. Generation of fine-grained details such as textures and logos.
- **Fairness and Explainability** Highlight the effect of multimodality on model predictions. Study and simplify the mathematics behind it. Correct and mitigate existing biases.
- **Human Movement for Health and Performance** Generate and track human motion, model garments, with applications to game sports (tennis, martial arts), biomechanics, rehabilitation.

I have a background in Artificial Intelligence and Robotics from Sapienza University of Rome. I have visited [Φ-Lab](https://philab.esa.int/) at [European Space Agency](https://www.esa.int/) in 2022-2023 as a thesist.
I graduated with a thesis on Diffusion Models for Earth Observation Data, supervised by [Irene Amerini](https://sites.google.com/diag.uniroma1.it/ireneamerini) (Sapienza) and co-supervised by [Bertrand Le Saux](https://blesaux.github.io/) (Φ-Lab). [Paper](https://arxiv.org/abs/2311.06222) and [Code](https://github.com/furio1999/EO_Diffusion)

In the meanwhile, I delve into sports firstly for passion, secondly for the remarkable benefits of living a student-athlete life and finally for sake of competition.
You can find more in my [athlete](https://furio1999.github.io//athlete/) page and in several blog posts.

## Latest News

<!-- /* General styling for the news section */ -->
<html lang="en">
<head>
<style>
.news-container {
  display: flex;
  flex-direction: column;
  gap: 20px;
  margin: 20px auto;
  max-width: 800px;
}

.news-item {
  padding: 20px;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

.news-date {
  font-size: 14px;
  color: #888;
  margin-bottom: 10px;
}

.news-title {
  font-size: 24px;
  margin: 0 0 10px;
}

.news-title a {
  text-decoration: none;
  color: #333;
}

.news-title a:hover {
  text-decoration: underline;
}

.news-description {
  font-size: 16px;
  color: #666;
  margin: 0 0 10px;
}

.news-read-more {
  display: inline-block;
  font-size: 16px;
  color: #007bff;
  text-decoration: none;
}

.news-read-more:hover {
  text-decoration: underline;
}
</style>
</head>

<body>
<div class="news-container">
  {% assign sorted_news = site.pages | where: "path", "/news.md" | first | parse_yaml %}
  {% assign news_items = sorted_news | split: '---' | slice: 1, 3 %}

  {% for item in news_items %}
    {% assign news = item | parse_yaml %}
    <div class="news-item">
      <div class="news-date">{{ news.date | date: "%B %d, %Y" }}</div>
      <h2 class="news-title"><a href="{{ news.link }}">{{ news.title }}</a></h2>
      <p class="news-description">{{ news.description }}</p>
      <a class="news-read-more" href="{{ news.link }}">Read more</a>
    </div>
    <hr>
  {% endfor %}
</div>
</body>
</html>


