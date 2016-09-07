<app>
  <dashboard />
  <page1 />
  <page2 />
  <show-app />

  <script>
    this.on('mount', function() {
      riot.route.start(true)
    })
  </script>
</app>
