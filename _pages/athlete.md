---
layout: single
title: "Athlete"
permalink: /athlete
author_profile: true
---

{% comment %}
  Results live in _data/athlete.yml — add new races there (newest first).
  Photos are web-sized copies in /images/web/ (originals untouched in /images/).
{% endcomment %}

<div class="ath-hero" style="background-image:url('{{ '/images/web/monteromano.jpg' | relative_url }}')">
  <div class="ath-hero__text">
    <p class="ath-hero__quote">Instinct chooses,<br>rationality follows.</p>
    <p class="ath-hero__sub">Duathlon · Road cycling · Running · Taekwondo</p>
  </div>
</div>

<div class="stats">
  <div class="stat stat--accent"><div class="stat__value">🏆 1st</div><div class="stat__label">Italian Champion, AG 25–29<br>Duathlon Sprint 2025</div></div>
  <div class="stat"><div class="stat__value">34:43</div><div class="stat__label">10 km run leg<br>Duathlon Classic 2024</div></div>
  <div class="stat"><div class="stat__value">15:53</div><div class="stat__label">5 km run leg<br>Duathlon Sprint 2025</div></div>
  <div class="stat"><div class="stat__value">1st Dan</div><div class="stat__label">Taekwondo<br>black belt</div></div>
</div>

<div class="feature">
  <img src="{{ '/images/web/capione_italiano.jpg' | relative_url }}" alt="Fulvio with the Italian champion medal at Imola" loading="lazy">
  <div class="feature__body">
    <p class="eyebrow">Imola · April 2025</p>
    <h3>Italian Age-Group Champion</h3>
    <p>Gold in the 25–29 age group at the Duathlon Sprint Italian Championships on the Imola circuit, 4th in the overall age-group ranking — the result of months full of emotions and fear. It deserves its own blog post, coming soon.</p>
    <a class="btn-chip" href="https://www.fitri.it/it/news/fitri/1159-terzo-piano/20323-podi-e-classifiche-age-group-dei-campionati-italiani-duathlon-sprint-imola-2025.html"><i class="fas fa-list-ol" aria-hidden="true"></i> Official results</a>
  </div>
</div>

## A taekwondoka turned endurance athlete

<p class="lede">It all started with swimming lessons as a child and with what I consider the first milestone of my life: <strong>learning taekwondo</strong>. I joined many tournaments, made a lot of friends and, above all, began to understand how my body works — and to change my introverted nature. The black belt (1st Dan) is one of the last memories of that chapter; I still feel strong pride and emotion when I wear it. I will come back one day.</p>

After two short stints in tennis, I started competing again: mountain biking (2017–2018), running (2018–present) and road cycling (2021–present). In 2024 I added **duathlon**, which looks like the most promising one, at least for me.

My athletic history is much younger than the other parts of my life — even if, from the outside, it looks like I train a lot. I do. But my passions have not yet converged on one clear goal, so I keep exploring.

<div class="pullquote">My athletic and engineering achievements are not only selfish results: I want to spread awareness about life as a student-athlete, for future students and for current success stories. Every path towards excellence is paved with hard lessons, emotions and people. Especially people.</div>

## Results

{% for d in site.data.athlete.disciplines %}
<div class="discipline">
  <div class="discipline__icon" aria-hidden="true">{{ d.icon }}</div>
  <div>
    <div class="discipline__head">
      <h3>{{ d.name }}</h3>
      {% if d.team %}<span class="team">{% if d.team_url %}<a href="{{ d.team_url }}">{{ d.team }}</a>{% else %}{{ d.team }}{% endif %}</span>{% endif %}
    </div>
    <ul class="results">
      {% for r in d.results %}
      <li>
        <span class="yr">{{ r.year }}</span>
        <span class="place{% if r.gold %} gold{% endif %}">{{ r.place }}</span>
        <span class="what">{{ r.event | markdownify | remove: '<p>' | remove: '</p>' | strip }}{% if r.url %} <a href="{{ r.url }}">results ↗</a>{% endif %}</span>
      </li>
      {% endfor %}
    </ul>
  </div>
</div>
{% endfor %}

## On the race course

<div class="gallery">
  <figure class="wide"><img src="{{ '/images/web/imola_25_arrivo.jpg' | relative_url }}" alt="Finish line at the 2025 Duathlon Italian Championships, Imola" loading="lazy"><figcaption>Imola 2025 · finish line</figcaption></figure>
  <figure><img src="{{ '/images/web/imola_run.jpg' | relative_url }}" alt="Running at Imola" loading="lazy"><figcaption>Imola</figcaption></figure>
  <figure><img src="{{ '/images/web/sguardo.jpg' | relative_url }}" alt="Racing on the bike" loading="lazy"></figure>
  <figure class="wide"><img src="{{ '/images/web/gorga_2022_partenza.jpg' | relative_url }}" alt="Race start, Gorga 2022" loading="lazy"><figcaption>Gorga 2022</figcaption></figure>
  <figure class="wide"><img src="{{ '/images/web/pasqualonga.jpg' | relative_url }}" alt="Winning La Pasqualonga, 2019" loading="lazy"><figcaption>La Pasqualonga 2019 · first win</figcaption></figure>
</div>

## Exploring by bike

Sport is also about exploration, not only competition. Riding around helps me connect with the places I live in.

<div class="gallery">
  <figure class="wide"><img src="{{ '/images/web/tds.jpg' | relative_url }}" alt="Climbing an alpine road in Switzerland" loading="lazy"><figcaption>Switzerland</figcaption></figure>
  <figure><img src="{{ '/images/web/pordoi.jpg' | relative_url }}" alt="At Passo Pordoi" loading="lazy"><figcaption>Passo Pordoi</figcaption></figure>
  <figure><img src="{{ '/images/web/corvara.jpg' | relative_url }}" alt="Bike near Corvara" loading="lazy"><figcaption>Corvara</figcaption></figure>
  <figure><img src="{{ '/images/web/pordoi_bici.jpg' | relative_url }}" alt="Bike in the Dolomites" loading="lazy"><figcaption>Dolomites</figcaption></figure>
  <figure><img src="{{ '/images/web/serramazzoni.jpg' | relative_url }}" alt="Snow at Serramazzoni" loading="lazy"><figcaption>Serramazzoni</figcaption></figure>
  <figure class="wide"><img src="{{ '/images/web/sasso_marconi.jpg' | relative_url }}" alt="Road signs to Sasso Marconi" loading="lazy"><figcaption>Sasso Marconi</figcaption></figure>
</div>

<p style="margin-top:1.6em"><a class="btn-chip" href="https://www.strava.com/athletes/{{ site.author.strava }}"><i class="fab fa-strava" aria-hidden="true"></i> Follow on Strava</a></p>
