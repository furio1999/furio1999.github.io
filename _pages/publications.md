---
layout: single
title: "Publications"
permalink: /publications/
author_profile: true
---

<!-- https://codedamn.com/news/frontend/how-to-put-image-and-text-side-by-side-in-html -->

<!-- {% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %} -->

{% include base_path %}

<html>
  <head>
    <title>Pretty Paris</title>
  </head>
  <style>
  .container {
  display: flex;
  align-items: center;
  justify-content: left
}

  .img {
    max-width: 100%;
    max-height:100%;
  }

  .text {
    font-size: 18px;
    padding-left: 15px;
    padding-top: 10px;
  }
  .head{
    padding-top:10px
    padding-bottom:10px
    margin-top:5px
    margin-bottom:5px
  }

  </style>
</html>

## 2023

<!-- 2023-DM_usecases -->
<!-- TODO: img container ok, img height smaller; Bigger text, same block height, smaller spaces -->
<html>
<body>
    <div class="container">
        <div class="image" align="center"><img src="../images/slides_cr.png" class="img-fluid" alt="Manuscript Thumbnail" style="max-width: 100%; max-height: 160px;"></div>
        <div class="text"><h4>Diffusion Models for Earth Observation Use-cases: from cloud removal to urban change detection</h4>
        <h6 style="color:red" class="text"> (oral) </h6>
        <h6 style="font-weight: normal" class="text"> <i> Fulvio Sanguigni, Mikolaj Czerkawski, Lorenzo Papa, Irene Amerini, Bertrand Le Saux </i> </h6>
        <h6 style="font-weight: normal" class="text"> Big Data from Space (BiDS), Nov 2023 </h6>
        <br>
        <p><a class="text-decoration-none site-link" href="https://arxiv.org/abs/2311.06222">[Arxiv]</a> / <a class="text-decoration-none site-link" href="https://arxiv.org/pdf/2311.06222">[PDF]</a> / <a class="text-decoration-none site-link" href="https://github.com/furio1999/EO_Diffusion">[Code]</a></p></div>
    </div>
    <hr class="col-12">
</body>