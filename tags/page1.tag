<page1 if={show}>
  <h1>Page 1</h1>
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
  localRoute('/page1', function () {
    self.show = true
    self.update()
  })
  </script>
</page1>
