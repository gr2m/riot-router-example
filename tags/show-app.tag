<show-app if={show}>
  <h1>App {id}</h1>
  <p>
    <a href="#/">back</a>
  </p>

  <script>
  var self = this

  // routing
  var localRoute = riot.route.create()
  localRoute(function () {
    self.show = false
    self.update()
  })
  localRoute('/apps/*', function (id) {
    self.show = true
    self.id = id
    self.update()
  })
  </script>
</show-app>
