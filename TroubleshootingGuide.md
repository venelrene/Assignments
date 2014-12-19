# Troubleshooting Guide

__Are things not going as you expect? Changes you made not showing up somewhere? Try these reminders.__


### Have you run all your migrations? To check your local database migration status run:

````
rake db:migrate:status
````

For your Heroku database use:

````
heroku run rake db:migrate:status
````

If checking the status shows outstanding (_down_ migrations), run:

Local:

````
rake db:migrate
````

Heroku:

````
heroku run rake db:migrate
heroku restart
````

_Note: you should restart your Heroku server after running a migration._

### Ensure you have saved all your files

In Atom, choose File -> Save All or press Option - Command - S

In RubyMine, choose File -> Save All, or press Command-S


### Have you committed all your work?

To check your local git status:

````
git status
````

### Have you pushed all your updates to GitHub?

When you run:

````
git status
````

Look for text like this:

`Your branch is ahead of 'origin/master' by 1 commit.`

This indicates you have not pushed your changes to GitHub.

### Have you pushed all your updates to Heroku?

Run:

````
heroku releases
````

To see the last time you deployed (ie. pushed your code) to Heroku.

### Have you added a new attribute to your model and it's form, but the new attribute isn't saving to the database?

Check your logs and look for text like this:

`Unpermitted parameters...`

This is a silent security warning telling you that you submitted an attribute via a form field that isn't permitted. The permission is granted in the controller you are submitting to, at the bottom a private method named:

`model_name_params`

### Getting a _wrong number of arguments_ error?

This means you are calling a method with a different number of arguments than the method expects.

Example:

If a method is setup like this:

````
def calculate_total(a, b)
 return a + b
end
````

This method expects _two_ arguments to be supplied. If you call it like this:

````
calculate_total
````

or

````
calculate_total(1)
````

The result will be the 'wrong number of arguments' error.

### Getting a _NoMethodError: undefined method 'some method name' for nil:NilClass`_?

Where _some method name_ can be any method? This indicates you are attempting to call a method on a nil, or on nothing.

Here is an example of what would cause this:

````
book.author.name
````

If the `book` has no author (ie. it's nil), you cannot get the name from it. This would result in this error.

You could modify it to `try` to call the name method on author and silently fail like this:

````
book.author.try(:name)
````
