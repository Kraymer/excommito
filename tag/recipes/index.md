---
layout:       page
title:        Recipes
---

<ul>
  {% for recipe_var in site.recipe %}

  <li><a href="{{ recipe_var.permalink }}">{{ recipe_var.title }}</a></li>
  {% endfor %}
</ul>