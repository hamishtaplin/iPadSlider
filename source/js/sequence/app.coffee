#  ____                                       
# / ___|  ___  __ _ _   _  ___ _ __   ___  ___ 
# \___ \ / _ \/ _` | | | |/ _ \ '_ \ / __|/ _ \
#  ___) |  __/ (_| | |_| |  __/ | | | (__|  __/
# |____/ \___|\__, |\__,_|\___|_| |_|\___|\___|
#                |_|   
                                                               
"use strict"  

#init function happens as soon as javascript is loaded
do init = () ->
  $(document).ready ->
    onDocReady()
# executes when document is ready
onDocReady = () ->
  # init CoffeeSlider
  slider = new SEQ.modules.CoffeeSlider
    container: $("#slider")
    transitionType: "slide"
    loop: "infinite"
    slideshow: false
    transitionSpeed: 400
    transitionDirection: "horizontal"
    hasDotNav: false
    touchStyle: "drag"
    debug: true
    selectors:
      slide: "li"
    callbacks: 
      onTransitionComplete: =>
        console.log(slider.currentSlide)
