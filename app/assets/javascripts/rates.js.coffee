# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $.ajax(
    url: '/morris.json'
    method: 'get'
    dataType: 'json'
    success: (data) ->
      $("#chart").html('')
      Morris.Line(
        element: 'line-chart'
        data: data
        xkey: 'title'
        ykeys: ['value']
        labels: ['EUR_USD']
      )
  )