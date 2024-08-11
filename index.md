---
permalink: /
author_profile: true
layout: news # no layot originally
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


