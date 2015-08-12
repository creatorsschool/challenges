# Simple cart in JavaScript (constructor)

Implement a shopping cart as object created from a *constructor function*
that can answer to methods as examplified below.

```javascript
var productA = { id: 1, price: 50 };
var productB = { id: 2, price: 100 };

var mycart = new Cart();

mycart.add(productA);
mycart.add(productB);
mycart.total();

mycart.removeById(productA.id);
mycart.total();
```
