---
layout: single
title: "Publications"
permalink: /publications
author_profile: true
---

{% assign pubs = site.data.publications %}
{% assign has_equal = false %}

<div class="pub-toolbar" role="group" aria-label="Filter publications">
  <button class="filter-chip" type="button" data-filter="all" aria-pressed="true">All</button>
  <button class="filter-chip" type="button" data-filter="fashion" aria-pressed="false">Fashion &amp; Try-On</button>
  <button class="filter-chip" type="button" data-filter="dataset" aria-pressed="false">Datasets</button>
  <button class="filter-chip" type="button" data-filter="remote-sensing" aria-pressed="false">Remote Sensing</button>
  <span class="count"><span data-count>{{ pubs.size }}</span> papers · <a href="{{ site.author.googlescholar }}">Google Scholar</a></span>
</div>

{% assign current_year = "" %}
{% for pub in pubs %}
{% assign y = pub.year | append: "" %}
{% if y != current_year %}
<h2 class="pub-year" data-year="{{ y }}">{{ y }}</h2>
{% assign current_year = y %}
{% endif %}

{% comment %} ---- build author list + bibtex author string ---- {% endcomment %}
{% capture bib_authors %}{% for a in pub.authors %}{{ a.name }}{% unless forloop.last %} and {% endunless %}{% endfor %}{% endcapture %}
{% assign booktitle = pub.venue | split: ", " | first %}

<article class="pub{% if pub.featured %} is-featured{% endif %}" data-topics="{{ pub.topics | join: ' ' }}" data-year="{{ y }}">
  <a class="pub__media" href="{{ pub.links[0].url }}" aria-hidden="true" tabindex="-1">
    <img src="{{ pub.image | relative_url }}" alt="" loading="lazy">
  </a>
  <div class="pub__body">
    <div class="pub__badges">
      {% if pub.venue_short %}<span class="pill pill--accent">{{ pub.venue_short }}</span>{% endif %}
      {% if pub.award %}<span class="pill pill--gold"><i class="fas fa-star" aria-hidden="true"></i> {{ pub.award }}</span>{% endif %}
      {% if pub.kind %}<span class="pill">{{ pub.kind }}</span>{% endif %}
    </div>
    <h3 class="pub__title"><a href="{{ pub.links[0].url }}">{{ pub.title }}</a></h3>
    <p class="pub__authors">
      {% for a in pub.authors %}{% if a.equal %}{% assign has_equal = true %}{% endif %}{% if a.me %}<span class="me">{{ a.name }}{% if a.equal %}*{% endif %}</span>{% elsif a.url %}<a href="{{ a.url }}">{{ a.name }}{% if a.equal %}*{% endif %}</a>{% else %}{{ a.name }}{% if a.equal %}*{% endif %}{% endif %}{% unless forloop.last %}, {% endunless %}{% endfor %}
    </p>
    <p class="pub__venue">{{ pub.venue }}</p>
    {% if pub.tldr %}<p class="pub__tldr">{{ pub.tldr }}</p>{% endif %}
    <div class="pub__links">
      {% for link in pub.links %}
      <a class="btn-chip" href="{{ link.url }}"><i class="{{ link.icon }}" aria-hidden="true"></i> {{ link.label }}</a>
      {% endfor %}
      <button class="btn-chip" type="button" data-bib-toggle aria-expanded="false"><i class="fas fa-quote-right" aria-hidden="true"></i> BibTeX</button>
    </div>
    <div class="pub__bib" hidden>
      <button class="btn-chip copy" type="button" data-bib-copy><i class="fas fa-copy" aria-hidden="true"></i> Copy</button>
<pre>{% if pub.bibtex %}{{ pub.bibtex | strip | escape }}{% else %}@inproceedings{% raw %}{{% endraw %}{{ pub.bibkey }},
  title     = {% raw %}{{% endraw %}{{ pub.title | escape }}{% raw %}}{% endraw %},
  author    = {% raw %}{{% endraw %}{{ bib_authors | strip }}{% raw %}}{% endraw %},
  booktitle = {% raw %}{{% endraw %}{{ booktitle | escape }}{% raw %}}{% endraw %},
  year      = {% raw %}{{% endraw %}{{ pub.year }}{% raw %}}{% endraw %}
}{% endif %}</pre>
    </div>
  </div>
</article>
{% endfor %}

{% if has_equal %}<p class="pub-note">* Equal contribution.</p>{% endif %}

<script>
(function () {
  var chips = document.querySelectorAll('.filter-chip');
  var pubs = document.querySelectorAll('.pub');
  var years = document.querySelectorAll('.pub-year');
  var count = document.querySelector('[data-count]');
  function apply(f) {
    var n = 0, seen = {};
    for (var i = 0; i < pubs.length; i++) {
      var show = f === 'all' || (' ' + pubs[i].getAttribute('data-topics') + ' ').indexOf(' ' + f + ' ') > -1;
      pubs[i].hidden = !show;
      if (show) { n++; seen[pubs[i].getAttribute('data-year')] = true; }
    }
    for (var j = 0; j < years.length; j++) years[j].hidden = !seen[years[j].getAttribute('data-year')];
    if (count) count.textContent = n;
  }
  for (var i = 0; i < chips.length; i++) {
    chips[i].addEventListener('click', function () {
      for (var k = 0; k < chips.length; k++) chips[k].setAttribute('aria-pressed', 'false');
      this.setAttribute('aria-pressed', 'true');
      apply(this.getAttribute('data-filter'));
    });
  }
  document.addEventListener('click', function (e) {
    var t = e.target.closest('[data-bib-toggle]');
    if (t) {
      var box = t.closest('.pub__body').querySelector('.pub__bib');
      box.hidden = !box.hidden;
      t.setAttribute('aria-expanded', box.hidden ? 'false' : 'true');
      return;
    }
    var c = e.target.closest('[data-bib-copy]');
    if (c) {
      var txt = c.parentNode.querySelector('pre').textContent;
      var done = function () { c.innerHTML = '<i class="fas fa-check" aria-hidden="true"></i> Copied'; setTimeout(function () { c.innerHTML = '<i class="fas fa-copy" aria-hidden="true"></i> Copy'; }, 1600); };
      if (navigator.clipboard) navigator.clipboard.writeText(txt).then(done, done); else done();
    }
  });
})();
</script>
