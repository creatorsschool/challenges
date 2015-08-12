// jQuery must be loaded previously

function renderCart(items) {
  var $cart = $('<div></div>');
  var $list = $('<ul></ul>');
  var $btn = $('<button></button>');

  $btn.text('Checkout');

  items.forEach(function(item) {
    var $listItem = $('<li></li>');
    var $name = $('<p></p>');
    var $price = $('<span></span>');

    $name.text(item.name);
    $price.text(item.price);

    $listItem
      .addClass("item-" + item.id)
      .append($name)
      .append($price);

    $list.append($listItem);
  });

  $cart
    .append($list)
    .append($btn);

  return $cart;
}

var products = [
  { id: 1, name: "Apples", price: 0.32 },
  { id: 2, name: "Oranges", price: 0.40 },
  { id: 3, name: "Bananas", price: 0.70 }
];

console.log(renderCart(products));
