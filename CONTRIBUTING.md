We love pull requests. Here's a quick guide:

1. Fork the repo.
1. Run the tests. We only take pull requests with passing tests, and it's great to know that you have a clean slate: `mix deps.get && mix test`
1. We do `mix format` to keep our code base consistent and clean.
1. Please add a test for your change. Only refactoring and documentation changes require no new tests. If you are adding functionality or fixing a bug, we need a test!
1. If you're adding doctests, please make sure to include 4 examples. 4 is our magic number in this library and this is our pattern.
1. When removing a method, don't forget to deprecate it. You can use `@deprecated "message"` to deprecate a faker interface method.
1. Push to your fork and submit a pull request.

### Github Flow for contributors and collaborators

For those of you with commit access, please check out Scott Chacon's blog post about [github flow](http://scottchacon.com/2011/08/31/github-flow.html)

> * Anything in the master branch is deployable
> * To work on something new, create a descriptively named branch off of master (ie: new-oauth2-scopes)
> * Commit to that branch locally and regularly push your work to the same named branch on the server
> * When you need feedback or help, or you think the branch is ready for merging, open a pull request
> * After someone else has reviewed and signed off on the feature, you can merge it into master

If you're reviewing a PR, you should ask yourself:
> * Does it work as described? A PR should have a great description.
> * Is it understandable?
> * Is it well implemented?
> * Is it well tested?
> * Is it well documented?
> * Is it following the structure of the project?
