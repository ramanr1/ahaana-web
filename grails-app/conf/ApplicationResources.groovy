modules = {
    application {
        resource url: 'js/application.js'
    }
    bootstrap {
        resource url: 'less/custom-bootstrap.less', attrs: [rel: "stylesheet/less", type: 'css']
        dependsOn 'jquery'
        dependsOn 'bootstrapJs'
    }
    bootstrapJs {
        resource url: 'js/bootstrap/affix.js'
        resource url: 'js/bootstrap/alert.js'
        resource url: 'js/bootstrap/button.js'
        resource url: 'js/bootstrap/carousel.js'
        resource url: 'js/bootstrap/collapse.js'
        resource url: 'js/bootstrap/dropdown.js'
        resource url: 'js/bootstrap/modal.js'
        resource url: 'js/bootstrap/popover.js'
        resource url: 'js/bootstrap/scrollspy.js'
        resource url: 'js/bootstrap/tab.js'
        resource url: 'js/bootstrap/tooltip.js'
        resource url: 'js/bootstrap/transition.js'
    }
}