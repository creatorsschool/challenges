# Render a cart DOM element using JavaScript

Implement a function that given an array of products it returns
a new DOM element.

**Example:**
```javascript
function renderCart(items) {
  // code here...
}

var products = [
  { id: 1, name: "Apples", price: 0.32 },
  { id: 2, name: "Oranges", price: 0.40 },
  { id: 3, name: "Bananas", price: 0.70 }
];

console.log(renderCart(products));
```

** Result:**
```html
<div>
  <ul>
    <li class="item-1">
      <p>Apples</p>
      <span>0.32</span>
    </li>
    <li class="item-2">
      <p>Oranges</p>
      <span>0.4</span>
    </li>
    <li class="item-3">
      <p>Bananas</p>
      <span>0.7</span>
    </li>
  </ul>
  <button>Checkout</button>
</div>
```
