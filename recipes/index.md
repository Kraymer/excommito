---
layout:       page
title:        Recipes
---

[Ile flottante](ile_flottante/)
[Poulet mayo](poulet_mayo/)

bruh
{% for recipe in site.recipes %}
    {{ recipe.name }}
{% endfor %}