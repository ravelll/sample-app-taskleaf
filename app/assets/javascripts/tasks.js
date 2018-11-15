// turbolinks:load => turbolinks 環境下での window.onload
document.addEventListener('turbolinks:load', function() {
  document.querySelectorAll('td').forEach(function(td) {
    td.addEventListener('mouseover', function(e) {
      e.currentTarget.style.backgroundColor = '#e1e4e8'
    })

    td.addEventListener('mouseout', function(e) {
      e.currentTarget.style.backgroundColor = ''
    })
  })
})
