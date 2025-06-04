---
permalink: /
author_profile: true
---


Hi! I am Fulvio Sanguigni! I am an [Italian National PhD](https://www.phd-ai.it/en/359-2/) student, part of [AImageLab](https://aimagelab.ing.unimore.it/imagelab/) at [University of Modena and Reggio Emilia](https://www.unimore.it/), supervised by [Marcella Cornia](https://scholar.google.it/citations?user=DzgmSJEAAAAJ&hl=it), and [Rita Cucchiara](https://scholar.google.it/citations?user=OM3sZEoAAAAJ&hl=it)
My research direction is focused on **Multimodal Generative AI**, mainly focused to 2D Image Editing, Fashion Design and Virtual Try-On. For further details, check my works on [RAG techniques for Fashion Design](https://arxiv.org/abs/2504.14011) and [Virtual Try-Off](https://temu-vtoff-page.github.io/).
I have previously worked at [European Space Agency](https://www.esa.int/), as a visiting student in [Φ-Lab](https://philab.esa.int/), supervised by [Irene Amerini](https://sites.google.com/diag.uniroma1.it/ireneamerini) (Sapienza University of Rome) and co-supervised by [Bertrand Le Saux](https://blesaux.github.io/) (Φ-Lab). As a result, we developed one of the first diffusion-based methods for image inpaiting in remote sensing, you can check it [here](https://arxiv.org/abs/2311.06222).

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


