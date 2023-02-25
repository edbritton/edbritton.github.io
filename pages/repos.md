---
title: Ed’s Projects
permalink: /repos/
redirect_from:
  - /projects/
  - /repositories/
  - /github/
---

{% assign repos = site.github.public_repositories | sort: "pushed_at" | reverse %}
{% for repository in repos %}
**[{% if repository.fork %}{% octicon repo-forked height:16 aria-label:"Forked repo: " fill:currentcolor %}&nbsp;{% endif %}{{ repository.name }}]({% if repository.homepage %}{{ repository.homepage }}{% else %}{{ repository.html_url }}{% endif %})** 
<small><time datetime="{{ repository.pushed_at | date: '%Y-%m-%d' }}">{{ repository.pushed_at | date: "%Y-%m-%d" }}</time></small>

{{ repository.description }}

{% unless forloop.last %}<hr color="silver" size="0.5px">{% endunless %}
{% endfor %}

---

{{ site.github }}