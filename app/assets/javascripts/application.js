// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

 

// $.ajax({
//            type: 'GET',
//            dataType: 'jsonp',
//            jsonp: 'callback',
//            url: 'https://api.meetup.com/find/groups?photo-host=public&zip=' + <%@profile.zipcode%> + '&page=20&country=usa&sig_id=188185019&sig=d9f44a2c374e46c96fe2447861de68aa7750ec29'
//                }).done(function(response){
//                		for (i = 0; i < response["data"].length; i++){
//                				console.log(response["data"][i])
//                				console.log(response["data"][i]["name"])
//                				$(".name").append("<a href='" + response["data"][i]["link"] + "'>"  + response["data"][i]["name"] + "</a>")

//                				  								 // <a href="http://www.w3schools.com">Visit W3Schools</a>
//                		}
//                })
//               