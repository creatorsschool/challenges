# Blog

There's a blog tutorial for every single web framework.
In this exercise you'll write a blogging application using sinatra.
Your blog should have the following features:

* An index page with a list of all posts. In this list of must show an excerpt of the blog's content.
* A show page to display all the information on a blog.
* An header an a footer.
* A form to insert new blog posts.

Build on top of [this](https://github.com/creatorsschool/sinatra_skeleton) skeleton.

You'll need a Post model with the "title" and "body" attributes.

## Part II - Comments

It's important to receive community feedback, let's add comments to the blog.
You'll need a form on the post's show page.

You'll also need a Comment model, this comment should belong to a Post.
Create a migration for the comments table and don't forget to add the belongs_to relation.


## Part III - Comments count

Show the a counter indicating the number of comments for each post in the index page.
