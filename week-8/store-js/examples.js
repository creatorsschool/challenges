// 1 - Object literals with methods

var Store = {
  getCatalog: function() {},
  getCartItems: function() {},
  getCartTotal: function() {},
  addProductToCart: function(product) {},
  removeProductFromCart: function(product) {}
};

var Cart = {
  add: function(product) {},
  remove: function(product) {},
  getItems: function() {},
  getTotal: function() {}
};

var Catalog = {
  getProducts: function() {}
};

Store.getCatalog();
Store.getCartTotal();
Cart.getTotal();
Catalog.getProducts();

// 2 - Constructors

function Store() {}
function Cart() {}
function Catalog() {}

var myCart = new Cart();
var myCatalog = new Catalog();

// 3 - Namespacing

function Store() {}
Store.Cart = function() {};
Store.Catalog = function() {};

var myCart = new Store.Cart();
var myCatalog = new Store.Catalog();

// 4 - Immediately-invoked function expression

(function() {
  // Every function creates its own private scope.
  // Functions can access their parents scope.

  function Store() {}
  function Cart() {}
  function Catalog() {}
})();

Store; // undefined

// 5 - Module with private scope, returning a constructor

var Store = (function() {
  function Store() {}
  function Cart() {}
  function Catalog() {}

  // return value will be accessible to outside var
  return Store;
})();

var myStore = new Store();

// 6 - Store Module; Catalog constructor, prototype and methods

var Store = (function() {
  function Store(products) {
    var catalog = new Catalog(products);
    var cart = new Cart();

    function getCatalog() {
      return catalog.getProducts();
    }

    return {
      getCatalog: getCatalog
    };
  }

  function Catalog(products) {
    this.products = products;
  }

  Catalog.prototype.getProducts = function() {
    return this.products;
  };

  function Cart() {}

  return Store;
})();

var myStore = new Store([]);
console.log(myStore.getCatalog()); // []
