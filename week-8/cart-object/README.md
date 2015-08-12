# Simple cart in JavaScript

Implement a shopping cart as an *object literal* that can answer to methods as
examplified below.

```javascript
var cart = {
  // code here...
};

var productA = { price: 5 };
var productB = { price: 10 };

cart.add(productA);
cart.add(productB);
cart.total(); // 15

cart.remove(productA);
cart.total(); // 10

```
