---
permalink: /
author_profile: true
---
<div class="small-text">

{% capture intro %}
Hi! I am Fulvio Sanguigni! I am an [Italian National PhD](https://www.phd-ai.it/) student, part of [AImageLab](https://aimagelab.ing.unimore.it/imagelab/) at [University of Modena and Reggio Emilia](https://www.unimore.it/), supervised by [Marcella Cornia](https://scholar.google.it/citations?user=DzgmSJEAAAAJ&hl=it), and [Rita Cucchiara](https://scholar.google.it/citations?user=OM3sZEoAAAAJ&hl=it).

👕 My research direction is focused on **Multimodal Generative AI**. I work on text to image generation, semantic editing and personalization techniques. My PhD is focused on applying **diffusion/flow-matching models** to fashion-design data; this can be done both in standard applications such as fitting garments to a person image (**Virtual Try-On**) and in new emerging trends such as generating flat, in-shop garments (**Virtual Try-Off**). For further details, check my works on [RAG techniques for Fashion Design](https://arxiv.org/abs/2504.14011) and [TEMU-VTOFF](https://temu-vtoff-page.github.io/).
Moreover, I am broadly interested in video and 3D applications involving human movement and garment physics simulation.

🛰️ I have previously worked at [European Space Agency](https://www.esa.int/), as a visiting student at [Φ-Lab](https://philab.esa.int/), supervised by [Irene Amerini](https://sites.google.com/diag.uniroma1.it/ireneamerini) (Sapienza University of Rome) and co-supervised by [Bertrand Le Saux](https://blesaux.github.io/) (Φ-Lab). As a result, *we developed one of the first diffusion-based methods for image inpainting in remote sensing* — you can check it [here](https://arxiv.org/abs/2311.06222).

🚴‍♂️ Meanwhile, I delve into sports: first for passion, second for the benefits of living a student-athlete life, and finally for the sake of competition.
You can find more on my [athlete](https://furio1999.github.io//athlete/) page and blog posts. 

<img src="images/ltf_logo.ico" alt="LTF LOGO" style="width:1em; height:1em;"> I am involved in [Lead The Future Mentorship](https://www.leadthefuture.tech/), a non-profit organization that helps Italian STEM students to develop their full potential and get/create exciting job opportunities.
{% endcapture %}

{{ intro | markdownify }}

</div>

<div class="news-container small-text">
  <h2>News</h2>

  {% for item in site.data.news %}
    <div class="news-item-row">
      <div class="news-date">{{ item.date }}</div>
      <div class="news-content">{{ item.content | markdownify }}</div>
    </div>
  {% endfor %}
</div>



