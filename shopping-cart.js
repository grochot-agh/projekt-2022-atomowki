let productsInCart = JSON.parse(localStorage.getItem('shoppingCart'));
if(!productsInCart){
	productsInCart = [];
}
const parentElement = document.querySelector('#buyItems');
const cartSumPrice = document.querySelector('#sum-prices');
const products = document.querySelectorAll('.product-under');
const cartAllSumPrice = document.querySelector('#sum-all-prices');  
const podsumowanie = document.querySelector('#podsumowanie');
    

const countTheSumPrice = function () { // 4
	let sum = 0;  //suma pojedynczego produktu
	productsInCart.forEach(item => {
		sum += item.price;
	});
	return sum;
}

const sumaZamowienia = function () {
	let suma = 0; //suma calego zamowienia
	suma = suma + countTheSumPrice(); 
	$('#suma').css('display', 'block');
	console.log(JSON.stringify(productsInCart));
	return suma;
}


const updateShoppingCartHTML = function () {  // 3
	localStorage.setItem('shoppingCart', JSON.stringify(productsInCart));
	console.log(productsInCart);
	//czy sa jakies produkty
	if (productsInCart.length > 0) {
		//
		let result = productsInCart.map(product => {
			//wyseitlenie tego produktu w koszyku
			return `
				<li class="buyItem">
					<div>
						<h5>${product.name}</h5>
						<h6>$${product.price}</h6>
						<div>
							<button class="button-minus" data-id=${product.id}>-</button>
							<span class="countOfProduct">${product.count}</span>
							<button class="button-plus" data-id=${product.id}>+</button>
						</div>
					</div>
				</li>`
		});
		parentElement.innerHTML = result.join('');
		podsumowanie.innerHTML = result.join('');
		$('.checkout').css('display', 'block');
		cartSumPrice.innerHTML = '$' + countTheSumPrice();
		//cartAllSumPrice.innerHTML = 'Suma: $' + sumaZamowienia();  
		cartAllSumPrice.innerHTML = sumaZamowienia(); 

	}
	//kesli nie ma produktow
	else {
		$('.checkout').css('display', 'none');
		parentElement.innerHTML = '<h4 class="empty">Twój koszyk jest pusty</h4>';
		podsumowanie.innerHTML = '<h4 class="empty">Twój koszyk jest pusty</h4>';
		cartSumPrice.innerHTML = '';
		cartAllSumPrice.innerHTML = '';
	}
}


function updateProductsInCart(product) { // 2
	for (let i = 0; i < productsInCart.length; i++) {
		//czy id są równe
		if (productsInCart[i].id == product.id) {
			//jesli tak to chcemy zwiekszyc
			productsInCart[i].count += 1;
			productsInCart[i].price = productsInCart[i].basePrice * productsInCart[i].count;
			return;
		}
	}
	productsInCart.push({...product}); 
	$.post("set_session.php", productsInCart, function (returnedData)    {
        console.log(returnedData); 
    });
	

}

products.forEach(item => {   // 1
	item.addEventListener('click', (e) => {
		//jesli klasa addToCart
		if (e.target.classList.contains('addToCart')) {
			//jesli tak to pobieramy wartosci produktu
			const productID = e.target.dataset.productId;
			const productName = item.querySelector('.productName').innerHTML; 
			const productPrice = item.querySelector('.priceValue').innerHTML;
			let product = {
				name: productName,
				id: productID,
				count: 1,
				price: +productPrice,
				basePrice: +productPrice,
			}
			updateProductsInCart(product);
			updateShoppingCartHTML();
		}
	});
});

parentElement.addEventListener('click', (e) => { // ostatnie
	const isPlusButton = e.target.classList.contains('button-plus');
	const isMinusButton = e.target.classList.contains('button-minus');
	if (isPlusButton || isMinusButton) {
		for (let i = 0; i < productsInCart.length; i++) {
			if (productsInCart[i].id == e.target.dataset.id) {
				if (isPlusButton) {
					productsInCart[i].count += 1
				}
				else if (isMinusButton) {
					productsInCart[i].count -= 1
				}
				productsInCart[i].price = productsInCart[i].basePrice * productsInCart[i].count;

			}
			if (productsInCart[i].count <= 0) {
				productsInCart.splice(i, 1);
			}
		}
		updateShoppingCartHTML();
	}
});

function Convert() {
	$.post("set_session.php", productsInCart, function (returnedData)    {
        console.log(returnedData); 
    });
}


updateShoppingCartHTML();
