# riot-router-example

> simple riot.js app with route-based content toggling

This is a simple application using [riot.js v2.6.0](http://riotjs.com/release-notes/#august-20-2016)
that defines routes in tags that show/hide themselves based on the current route.

I created it as a learning example for Hoodie’s [Rails Girls Summer of Code](http://railsgirlssummerofcode.org/)
Team 2016: [Titay & Hyesoo a.k.a. Team Rookies](https://rookies-2016rgsoc.rhcloud.com/)

## Usage

You can see the app running at [https://gr2m.github.io/riot-router-example/](https://gr2m.github.io/riot-router-example/).

Clone repository

```
git clone https://github.com/gr2m/riot-router-example.git
cd riot-router-example
```

Start a local http server in the folder. This will work on Mac or Linux:

```
python -m SimpleHTTPServer
```

Open `index.html` in your browser at the server URL.

## How it works

In the [index.html](index.html) file, all `*.tag` files are loaded, as well as
the `riot+compiler.min.js` which compiles the `*.tag` files on the fly to
JavaScript.

There is only the `<app>` custom tag in index.html, which we mount at the end
of the `<script>` tag. With that, all other tags are mounted as they are listed
in [tags/app.tag](tags/app.tag). Other than listing all other custom tags, we
only start the routing in `app.tag`.

All the content tags create their own local route function. By default, they set
their local `show` variable to false. If their defined route matches, it gets
set to true. That way all logic is contained in the custom tags.

[tags/show-app.tag](tags/show-app.tag) also shows how a tag can route for dynamic
routes that pass an id in the route, just for reference.

If you have any questions, ping me on Twitter at [@gr2m](https://twitter.com/gr2m/).
