---
layout: single
title: "Publications"
permalink: /publications
author_profile: true
---
<!-- https://codedamn.com/news/frontend/how-to-put-image-and-text-side-by-side-in-html -->
<!-- {% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %} -->
{% include base_path %}

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Publications</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }
    .container {
      display: flex;
      align-items: flex-start;
      justify-content: flex-start;
      margin: 20px auto;
      padding: 10px;
      max-width: 900px;
      background: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    .image img {
      max-width: 120px;
      height: auto;
      border-radius: 4px;
    }
    .text {
      margin-left: 20px;
      flex: 1;
    }
    .text h4 {
      margin: 0;
      font-size: 20px;
      font-weight: bold;
    }
    .text h6 {
      margin: 5px 0;
      font-size: 14px;
      color: #555;
    }
    .text h6.head {
      color: #d9534f; /* Red color for the oral */
      font-style: italic;
    }
    .text p {
      margin-top: 10px;
    }
    .text a {
      color: #337ab7;
      text-decoration: none;
    }
    .text a:hover {
      text-decoration: underline;
    }
    hr {
      border: none;
      border-top: 1px solid #ccc;
      margin: 20px 0;
    }
  </style>
</head>
<body>
  <!-- Publication Block Start -->
  <div class="container">
    <div class="image">
      <img src="../images/slides_cr.png" alt="Manuscript Thumbnail">
    </div>
    <div class="text">
      <h4>Diffusion Models for Earth Observation Use-cases: from cloud removal to urban change detection</h4>
      <h6 class="head">(oral)</h6>
      <h6><i>Fulvio Sanguigni, Mikolaj Czerkawski, Lorenzo Papa, Irene Amerini, Bertrand Le Saux</i></h6>
      <h6>Big Data from Space (BiDS), Nov 2023</h6>
      <p>
        <a class="text-decoration-none site-link" href="https://arxiv.org/abs/2311.06222">[Arxiv]</a> /
        <a class="text-decoration-none site-link" href="https://arxiv.org/pdf/2311.06222">[PDF]</a> /
        <a class="text-decoration-none site-link" href="https://github.com/furio1999/EO_Diffusion">[Code]</a>
      </p>
    </div>
  </div>
  <hr>
  <!-- Publication Block End -->

  <!-- Duplicate the block above and replace the content for additional publications -->

</body>
</html>
