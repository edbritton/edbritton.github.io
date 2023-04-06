{% if site.github.owner.bio %}{{ site.github.owner.bio }} {% endif %}

{% assign repos = site.github.public_repositories | sort: "pushed_at" | reverse | where_exp: "repos", "repos.homepage" | where_exp: "repos", "repos.homepage != ''"%}

<dl>{% for repo in repos %}{% if forloop.first %}<dt>{% octicon pin height:16 aria-label:"Pinned repos" fill:currentcolor %}</dt>{% endif %}<dd>
<a href="{{ repo.homepage }}">{% if repo.fork %}{% octicon repo-forked height:16 aria-label:"Forked repo: " fill:currentcolor %}{% else %}{% endif %}&nbsp;{{ repo.name }}</a>
</dd>{% endfor %}</dl>