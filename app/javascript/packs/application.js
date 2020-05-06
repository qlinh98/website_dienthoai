// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
// require('jquery')
// require("bootstrap")
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// require("styles")
// other js

// import('styles/bootstrap.min.css');
// import('styles/font-awesome.min.css');
// import('styles/nouislider.min.css');
// import '../styles/slick'
// import '../styles/slick-theme.css'
// import '../styles/style'

// other js

require('packs/jquery.min')
require('packs/bootstrap.min')
require('packs/slick.min')  
require('packs/nouislider.min')
require('packs/jquery.zoom.min') 
require('packs/main')

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
// import '../css/site.scss'
// import('../stylesheets/application.css');
// import '../stylesheets/bootstrap.min'
// import '../stylesheets/slick'
// import '../stylesheets/slick-theme'
// import '../stylesheets/nouislider.min'
// import '../stylesheets/font-awesome.min'
// import '../stylesheets/style'
// import "css/site.scss"