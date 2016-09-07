<dashboard if={show}>
  <h1>Dashboard</h1>

  <p>
    <a href="#/page1">page 1</a> |
    <a href="#/page2">page 2</a> |
    <a href="#/apps/123">app #123</a>
  </p>

  <script>
  var self = this

  // routing
  var localRoute = riot.route.create()
  localRoute(function () {
    self.show = false
    self.update()
  })
  localRoute('/', function () {
    self.show = true
    self.update()
  })
  </script>
</dashboard>
