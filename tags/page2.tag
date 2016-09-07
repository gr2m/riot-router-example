<page2 if={show}>
  <h1>Page 2</h1>
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
  localRoute('/page2', function () {
    self.show = true
    self.update()
  })
  </script>
</page2>
