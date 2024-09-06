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

<div class="news-list">
  {% for news in site.data.news %}
    <div class="news-item">
      <h3><a href="{{ news.url }}">{{ news.title }}</a></h3>
      <p class="news-date">{{ news.date | date: "%B %d, %Y" }}</p>
      <p class="news-excerpt">{{ news.excerpt | markdownify }}</p>
    </div>
    <hr>
  {% endfor %}
</div>


