# Contact form style
---

Give style to the contact form.

Details:
  - Create a main.css file in the same directory.
  - Load the css in the html.
  - Give 60px space around the whole document.
  - Give 20px between each label + input.
  - Make sure each label has at least 100px.
  - Make sure each input has at least 200px.
  - Style the green button.
  - Style the hover color on the green button.
  - Style the inputs.
  - Load a new font.

## Tips

* To load the css put the following on your html.

```html
<link rel="stylesheet" href="main.css">
```

* To give a minimum width use the rule `min-width`.

* To remove the default colors you can override them, for instance `border: none` removes the border around the buttons.

* To apply an hover color you can use the `:hover` selector, you can use it like `button:hover`.

* To load a new font past the following code in the head element and add the rule `font-family: 'Open Sans', sans-serif;` to the body.

```html
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
```
