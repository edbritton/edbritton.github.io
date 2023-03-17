{% assign repos = site.github.public_repositories | sort: "pushed_at" | reverse %}
{% assign easy_repos = repos | where: "homepage" %}

{% for repo in easy_repos %}
**[{% if repo.fork %}{% octicon repo-forked height:16 aria-label:"Forked repo: " fill:currentcolor %}&nbsp;{% endif %}{{ repo.name }}]({{ repo.homepage }})** 

{% unless forloop.last %}<hr color="silver" size="0.5px">{% endunless %}
{% endfor %}