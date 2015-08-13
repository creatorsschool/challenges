// Store

function Store(products) {
  this.cart = new Cart();
  this.catalog = new Catalog(products);
}

Store.prototype.getCatalog = function() {
  return this.catalog.getProducts();
};

Store.prototype.getCartItems = function() {
  return this.cart.items.slice();
};

Store.prototype.getCartTotal = function() {
  return this.cart.total();
};

Store.prototype.addProductToCart = function(product) {
  this.cart.add(product);
};

Store.prototype.removeProductFromCart = function(product) {
  this.cart.remove(product);
};

// Catalog

function Catalog(products) {
  this.products = products;
}

Catalog.prototype.getProducts = function() {
  return this.products;
};

// Cart

function Cart() {
  this.items = [];
}

Cart.prototype.add = function(product) {
  this.items.push(product);
};

Cart.prototype.total = function() {
  return this.items.reduce(function(total, item) {
    return total += item.price;
  }, 0);
};

Cart.prototype.remove = function(product) {
  this.items.splice(this.items.indexOf(product), 1);
};

// Application

var myStore = new Store([
  { name: "Apples", price: 0.24 },
  { name: "Oranges", price: 0.33 },
  { name: "Bananas", price: 0.56 }
]);

var apples = myStore.getCatalog()[0];
myStore.addProductToCart(apples);
myStore.addProductToCart(apples);
console.log(myStore.getCartTotal());
