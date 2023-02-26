---
---
<u>This page requires CSS to view properly.</u>

I love my typewriter, it’s easily the best productivity tool I have because it does one thing, and it does it really well.

Even though I’m trying to make websites which use little or no CSS, one reason for that is to avoid unnecessary and frivolous bad design choices.

Which is why I’ve made a bad design choice in this post, and I’ll show you how it’s done.

<samp>I love my <mark>typewriter</mark>!</samp>

<pre>samp {
  --WPM: 50;
  --secsToType100ch: calc(1200s / var(--WPM));
  display: block;
  overflow: hidden;
  font-family: ui-monospace, monospace;
  overflow: hidden;
  border-right: .15em solid dodgerblue;
  white-space: nowrap;
  animation: 
    typing var(--secsToType100ch) steps(100, end),
    caret 1s step-end infinite;
}

@keyframes typing {
  from { max-width: 0 }
  to { max-width: 100ch }
}

@keyframes caret {
  from, to { border-color: transparent }
  50% { border-color: dodgerblue }
}</pre>

<style>samp{--WPM:50;--secsToType100ch:calc(1200s/var(--WPM));display:inline-block;overflow:hidden;font-family: ui-monospace,monospace;border-right:.15em solid dodgerblue;white-space:nowrap;animation:typing var(--secsToType100ch) steps(100, end) infinite,caret 1s step-end infinite;}@keyframes typing {from,to{max-width:0}50%{max-width:100ch}}@keyframes caret{from,to{border-color:transparent}50%{border-color:dodgerblue}}</style>