---
layout: single
title: "Publications"
permalink: /publications
author_profile: true
---

<link rel="stylesheet" href="/assets/css/pubs.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

{% for pub in site.data.publications %}
<div class="publication-container">
  <div class="publication-item">
    <div class="publication-image">
      <img src="{{ pub.image }}" alt="Preview of {{ pub.title }}">
    </div>
    <div class="publication-text">
      <div class="publication-title">{{ pub.title }}</div>
      <div class="publication-note">{{ pub.note }}</div>
      <div class="publication-authors">
        <i>
          {% for author in pub.authors %}
            <a href="{{ author.url }}">{{ author.name }}</a>{% unless forloop.last %}, {% endunless %}
          {% endfor %}
        </i>
      </div>
      <div class="publication-conference">{{ pub.conference }}</div>
      <div class="publication-links">
        {% for link in pub.links %}
          <a href="{{ link.url }}" title="{{ link.title }}"><i class="{{ link.icon }}"></i></a>
        {% endfor %}
      </div>
      <div class="publication-footnote">{{ pub.footnote }}</div>
    </div>
  </div>
</div>
{% endfor %}

