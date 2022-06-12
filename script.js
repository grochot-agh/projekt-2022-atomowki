const responsiveNavbar = (function () {
	const button = document.querySelector("#menuButton");
	const navbar = document.querySelector("#navbar")
	button.addEventListener("click", function () {
		if (navbar.className === "navbar") {
			navbar.className += " navbarResponsive";
		}
		else {
			navbar.className = "navbar";
		}
	});
})();

if (document.getElementById('hearderSlide')) {
	$('#hearderSlide').multislider();
	$('#hearderSlide').multislider('pause');
}


function closeCart() {
	const cart = document.querySelector('.producstOnCart');
	cart.classList.toggle('hide');
	document.querySelector('body').classList.toggle('stopScrolling')
}


const openShopCart = document.querySelector('.shoppingCartButton');
openShopCart.addEventListener('click', () => {
	const cart = document.querySelector('.producstOnCart');
	cart.classList.toggle('hide');
	document.querySelector('body').classList.toggle('stopScrolling');
});


const closeShopCart = document.querySelector('#closeButton');
const overlay = document.querySelector('.overlay');
closeShopCart.addEventListener('click', closeCart);
overlay.addEventListener('click', closeCart);

//var loginform = document.getElementById('login');
var registerform = document.getElementById('register');
var togglebutton = document.getElementById('btn');

function login(){
	$('#register').css('display', 'none');
	$('#login').css('display', 'block');
	$('#opis2').css('display', 'block');
	$('#login-btn').css('display', 'none');
	$('#opis1').css('display', 'none');
	$('#register-btn').css('display', 'block');
}

function register(){
	$('#register').css('display', 'block');
	$('#login').css('display', 'none');
	$('#opis2').css('display', 'none');
	$('#register-btn').css('display', 'none');
	$('#opis1').css('display', 'block');
	$('#login-btn').css('display', 'block');
}

var modal = document.getElementById('loginform');
window.onlick = function(event) {
	if(event.target == modal) {
		modal.style.display = "none"; 
	}
}