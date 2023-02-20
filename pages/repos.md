---
title: Ed’s GitHub Repositories
permalink: /repos/index.html
published: true
---

![]({{site.github.owner_gravatar_url}})

{% for repository in site.github.public_repositories %}
  * [{{ repository.name }}]({{ repository.html_url }})
{% endfor %}