function renderCart(items) {
  var $cart = document.createElement('div');
  var $list = document.createElement('ul');
  var $btn = document.createElement('button');

  $btn.innerHTML = "Checkout";

  items.forEach(function(item) {
    var $listItem = document.createElement('li');
    var $name = document.createElement('p');
    var $price = document.createElement('span');

    $name.innerHTML = item.name;
    $price.innerHTML = item.price;
    $listItem.className = "item-" + item.id;
    $listItem.appendChild($name);
    $listItem.appendChild($price);

    $list.appendChild($listItem);
  });

  $cart.appendChild($list);
  $cart.appendChild($btn);

  return $cart;
}

var products = [
  { id: 1, name: "Apples", price: 0.32 },
  { id: 2, name: "Oranges", price: 0.40 },
  { id: 3, name: "Bananas", price: 0.70 }
];

console.log(renderCart(products));
