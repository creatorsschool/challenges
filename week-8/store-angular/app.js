angular
  .module('store', [])
  .value('products', fakeProducts())
  .service('Store', Store)
  .controller('CatalogCtrl', CatalogCtrl)
  .controller('CartCtrl', CartCtrl)
  .directive('storeCart', storeCart)
  .directive('storeCatalog', storeCatalog);

function CatalogCtrl(Store, products) {
  var ctrl = this;

  ctrl.store = Store;

  ctrl.add = function add(product) {
    Store.addProductToCart(product);
  };
}

function CartCtrl(Store) {
  var ctrl = this;

  ctrl.store = Store;

  ctrl.remove = function(item) {
    Store.removeProductFromCart(item);
  };
}

function storeCart() {
  return {
    restrict: 'A',
    templateUrl: 'cart.html',
    controller: 'CartCtrl',
    controllerAs: 'ctrl',
    scope: {}
  };
}

function storeCatalog() {
  return {
    restrict: 'A',
    templateUrl: 'catalog.html',
    controller: 'CatalogCtrl',
    controllerAs: 'ctrl',
    scope: {}
  };
}

function Store(products) {
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

  function Catalog(products) {
    this.products = products || [];
  }

  Catalog.prototype.getProducts = function() {
    return this.products;
  };

  function Cart() {
    this.items = [];
  }

  Cart.prototype.add = function(product) {
    var item = this.findItemById(product.id);

    if (item) {
      item.quantity += 1;
    } else {
      this.items.push({
        id: product.id,
        name: product.name,
        price: product.price,
        quantity: 1
      });
    }
  };

  Cart.prototype.findItemById = function(id) {
    var product;

    for (var i = 0; i < this.items.length; i++) {
      product = this.items[i];

      if (product.id === id) {
        return product;
      }
    }
  };

  Cart.prototype.total = function() {
    return this.items.reduce(function(total, item) {
      return total += item.price * item.quantity;
    }, 0);
  };

  Cart.prototype.remove = function(product) {
    var item = this.findItemById(product.id);
    this.items.splice(this.items.indexOf(item), 1);
  };

  return new Store(products);
}

function fakeProducts() {
  return [
    { id: 1, name: "Apples", price: 0.24 },
    { id: 2, name: "Oranges", price: 0.33 },
    { id: 3, name: "Bananas", price: 0.56 }
  ];
}
