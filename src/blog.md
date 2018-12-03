---
layout: pages
permalink: /blog/
pagination:
  enabled: true
---

<section class="post-list">
  {% for post in paginator.posts %}
    {% include article.html %}
  {% endfor %}

  <!-- {% include pagination.html %} -->
</section>
