function Cart() {
  this.items = [];
}

Cart.prototype.add = function(item) {
  this.items.push(item);
};

Cart.prototype.remove = function(id) {
  this.items = this.items.filter(function(item) {
    return id !== item.id;
  });
};

Cart.prototype.total = function() {
  return this.items.reduce(function(total, item) {
    return total + item.price;
  }, 0);
};

var productA = { id: 1, price: 50 };
var productB = { id: 2, price: 100 };

var mycart = new Cart();

mycart.add(productA);
mycart.add(productB);
mycart.total();

mycart.remove(productA.id);
mycart.total();
