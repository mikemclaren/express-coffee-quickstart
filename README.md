# Express Coffee Quickstart
A really simple boilerplate that includes:
- Express
- Bunyan
- A Bluebird Promise-based connection pooling wrapper for MySQL

It's written in Coffeescript, too!

Just `npm install` and get to work!

## Recommendations
- Supervisor: It's great! It'll watch everything in your directory and make you
a super baller.
- global Bunyan: It'll prettify your logs for you, if you use the bunyan logger.

In fact, here's the command I usually run (or alias up):
`supervisor server.coffee | bunyan -o short --level trace`

I may put it in a bin folder at some point.
