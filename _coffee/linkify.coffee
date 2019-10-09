---
---
linkify = text ->
  patterns =
    link: [ /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/ig, '<a href="$1" target="_blank">$1</a>' ]
    user: [ /(^|\s)@(\w+)/g, '$1<a href="http://twitter.com/$2" target="_blank">@$2</a>' ]
    hash: [ /(^|\s)#(\w+)/g, '$1<a href="https://twitter.com/search?q=from:{{site.author.twitter}}%20%23$2" target="_blank">#$2</a>' ]
  text
  .replace patterns.link[0], patterns.link[1]
  .replace patterns.user[0], patterns.user[1]
  .replace patterns.hash[0], patterns.hash[1]
