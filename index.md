{% assign repos = site.github.public_repositories | sort: "pushed_at" | reverse | where_exp: "repos", "repos.homepage" | where_exp: "repos", "repos.homepage != ''"%}

{% for repo in repos %}
- [{% if repo.fork %}{% octicon repo-forked height:16 aria-label:"Forked repo: " fill:currentcolor %}{% else %}{% octicon repo height:16 aria-label:"Forked repo: " fill:currentcolor %}{% endif %}&nbsp;{{ repo.full_name }}]({{ repo.homepage }})  
{% endfor %}