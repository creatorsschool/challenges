var cart = {
  items: [],
  add: function(item) {
    this.items.push(item);
  },
  remove: function(item) {
    this.items.splice(this.items.indexOf(item), 1);
  },
  total: function () {
    var count = 0;

    for (var i = 0; i < this.items.length; i++) {
      count += this.items[i].price;
    }

    return count;
  }
};

var productA = { price: 5 };
var productB = { price: 10 };

cart.add(productA);
cart.add(productB);
cart.total();

cart.remove(productA);
cart.total();
