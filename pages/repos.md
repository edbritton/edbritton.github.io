---
title: Ed’s GitHub Repositories
permalink: /repos/index.html
published: true
---

<p align="center"><img src="{{site.github.owner_gravatar_url}}" height="148"></p>

{% for repository in site.github.public_repositories %}
## {{ repository.name }}

<small><time>{{ repository.pushed_at | date: "%Y-%m-%d" }}</time> *{{ repository.language }}*</small>

{{ repository.description }}

[{{ repository.name }}]({% if repository.homepage %}{{ repository.homepage }}{% else %}{{ repository.html_url }}{% endif %})
{% endfor %}

<pre>
{{site.github}}
</pre>