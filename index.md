---
permalink: /
author_profile: true
---

<div class="home-intro">

<p class="eyebrow">PhD student · AImageLab, UNIMORE</p>
<h1 class="home-hello">Hi, I'm Fulvio, here you find my academic works and some parts of my life</h1>

<div class="home-topics">
  <span class="pill pill--accent">Multimodal Generative AI</span>
  <span class="pill">Virtual Try-On / Try-Off</span>
  <span class="pill">Diffusion &amp; Flow Matching</span>
  <span class="pill">Image Editing</span>
</div>

{% capture intro %}
I am an [Italian National PhD](https://www.phd-ai.it/) student, part of [AImageLab](https://aimagelab.ing.unimore.it/imagelab/) at the [University of Modena and Reggio Emilia](https://www.unimore.it/), supervised by [Marcella Cornia](https://scholar.google.it/citations?user=DzgmSJEAAAAJ&hl=it) and [Rita Cucchiara](https://scholar.google.it/citations?user=OM3sZEoAAAAJ&hl=it). I am currently visiting the [Fundamental AI Lab](https://fundamentalailab.github.io/) of [Yuki M. Asano](https://yukimasano.github.io/) at UTN, Nuremberg.

👕 My research focuses on **Multimodal Generative AI**: text-to-image generation, semantic editing and personalization. My PhD applies **diffusion / flow-matching models** to fashion-design data — both in standard settings such as fitting garments to a person image (**Virtual Try-On**) and in emerging ones such as generating flat, in-shop garments (**Virtual Try-Off**). Check out [Dress-ED](https://furio1999.github.io/Dress-ED/), [TEMU-VTOFF](https://temu-vtoff-page.github.io/) and [Fashion-RAG](https://arxiv.org/abs/2504.14011). I am also broadly interested in video and 3D applications involving human movement and garment physics simulation.

🛰️ Previously I was a visiting student at [Φ-Lab](https://philab.esa.int/), [European Space Agency](https://www.esa.int/), supervised by [Irene Amerini](https://sites.google.com/diag.uniroma1.it/ireneamerini) (Sapienza University of Rome) and co-supervised by [Bertrand Le Saux](https://blesaux.github.io/) (Φ-Lab). There, *we developed one of the first diffusion-based methods for image inpainting in remote sensing* — [paper here](https://arxiv.org/abs/2311.06222).

🚴‍♂️ Meanwhile, I delve into sports: first for passion, second for the benefits of a student-athlete life, and finally for the sake of competition. More on my [athlete](/athlete) page and in my [blog](/year-archive).

<img src="/images/ltf_logo.ico" alt="" style="width:1em; height:1em; vertical-align:-2px;"> I am involved in [Lead The Future Mentorship](https://www.leadthefuture.tech/), a non-profit that helps Italian STEM students develop their full potential and get or create exciting job opportunities.
{% endcapture %}

{{ intro | markdownify }}

</div>

<div class="section-head">
  <h2>News</h2>
  <a href="/publications">Publications →</a>
</div>

{% assign shown = 6 %}
<ul class="news">
{% for item in site.data.news limit: shown %}
  {% include news-item.html item=item %}
{% endfor %}
</ul>

{% if site.data.news.size > shown %}
<details class="news-more">
  <summary>Older news</summary>
  <ul class="news">
  {% for item in site.data.news offset: shown %}
    {% include news-item.html item=item %}
  {% endfor %}
  </ul>
</details>
{% endif %}
