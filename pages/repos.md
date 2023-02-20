---
title: Ed’s Projects
permalink: /repos/index.html
redirect_from:
  - /projects/
  - /repos/
  - /repositories/
  - /github/
---

<p align="center"><img src="{{site.github.owner_gravatar_url}}" height="148"></p>

{% for repository in site.github.public_repositories %}
## {{ repository.name }}  
<small><time>{{ repository.pushed_at | date: "%Y-%m-%d" }}</time> *{{ repository.language }}*</small>

{{ repository.description }}

[{{ repository.full_name }}]({% if repository.homepage %}{{ repository.homepage }}{% else %}{{ repository.html_url }}{% endif %})

{% unless forloop.last %}<hr color="silver" size="0.5px">{% endunless %}
{% endfor %}