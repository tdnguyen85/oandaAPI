# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $.ajax(
    url: '/morris.json'
    method: 'get'
    dataType: 'json'
    success: (data) ->
      priceArray = _.map(data, (object) ->
        object.value
      )
      minPrice = _.min(priceArray)
      maxPrice = _.max(priceArray)
      $("#chart").html('')
      Morris.Line(
        element: 'chart'
        data: data
        xkey: 'title'
        ykeys: ['value']
        labels: ['EUR_USD']
        ymin: minPrice
        ymax: maxPrice
      )

  )



















