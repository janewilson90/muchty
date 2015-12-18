$ ->

  treatmentLength = $(".treatment-item").length
  nhsLength = $(".treatment-item.nhs").length
  privateLength = $(".treatment-item.private").length
  $(".treatment-btn[data-filter='.nhs']").find(".treatment-badge").text(nhsLength)
  $(".treatment-btn[data-filter='.private']").find(".treatment-badge").text(privateLength)
  $(".treatment-btn[data-filter='*']").find(".treatment-badge").text(treatmentLength)

  grid = $(".treatment-grid")
  grid.isotope
    filter: '*'
    animationOptions:
      duration: 750
      easing: 'linear'
      queue: false

  $(".treatment-btn").click ->
    $(".treatment-btn .current").removeClass("current")
    $(@).addClass("current")
    selector = $(@).attr("data-filter")
    grid.isotope
      filter: selector
      animationOptions:
        duration: 750
        easing: 'linear'
        queue: false
    false
  return