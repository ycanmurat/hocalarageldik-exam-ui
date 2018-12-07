$(document).ready(function(){
	$(".hamburger").click(function(){
		$('body').toggleClass('blur');
	});

	$('div.signup button').click(function(event) {
		$('form#user-register').slideToggle(500);
		$('form#user-login').slideToggle(500);
		$('div.forgot-password').slideToggle(500);
		$(this).text(function(i, text){
			return text === "Kayıt Ol" ? "Giriş Yap" : "Kayıt Ol";
		})
	});

	$('div.forgot-password button').click(function(event) {
		$('div.signup').toggle(500);
		$('form#user-register').hide(500);
		$('form#user-login').slideToggle(500);
		$('form#sendpassword').slideToggle(500);
		$(this).text(function(i, text){
			return text === "Giriş Yap" ? "Parolamı Unuttum" : "Giriş Yap";
		})
	});
});



$('.owl-exams').owlCarousel({
	loop:true,
	margin:10,
	nav:true,
	dots:false,
	responsive:{
		0:{
			items:1
		},
		600:{
			items:3
		},
		1000:{
			items:5
		}
	}
})


window.onload = function() {
	setTimeout(function(){ $("#onload").addClass('loading');}, 1400);
};



$(window).scroll(function() {    
	var scroll = $(window).scrollTop();
	if (scroll >= 108) {
		$("body").addClass("cz-shot");
	}else{
		$("body").removeClass("cz-shot");
	}
});

/*
Dropzone JS
*/
