KiwiFromScratch
===============

This is a quick and dirty repo to demonstrate how you can set up a fresh Xcode
4 iOS app with the Kiwi testing framework.

To use, you need to clone this repo and then run...

    git submodule update --init

...to get the Kiwi submodule cloned into your local repo.

Open the project in Xcode 4 and then choose `Test` from the `Product` menu to
run the dummy test.

Check out the file `KiwiFromScratchTests/KiwiFromScratchTests.m` to see what's
being run.

Here's my [post on Kiwi][kiwipost] for more information.


  [kiwipost]: http://cocoamanifest.net/articles/2011/04/04/kiwi-lib.html


## How was this set up?

First, create a new iOS project in Xcode and make sure the "Include Unit Tests"
checkbox is checked.

Then, click on the root project in the left sidebar and in the build settings
of *both* targets, make sure you choose LLVM 2.0 as the compiler.

  ![](https://github.com/navellabs/KiwiFromScratch/raw/master/docs/choosecompiler.png)

Next, we need to add Kiwi as a submodule to the project. At the terminal, in
the root of the project, type this:

    git submodule add git://github.com/navellabs/Kiwi.git Kiwi

That will pull my forked version of Kiwi. You can substitute your own if you
wish.

Next, add Kiwi as a subproject to Xcode by dragging the `Kiwi.xcodeproj` file
in the `Kiwi` subdirectory underneath the `KiwiFromScratch` project like
so:

  ![](https://github.com/navellabs/KiwiFromScratch/raw/master/docs/kiwisubproject.png)

Click the `KiwiFromScratch` root project in that sidebar, then click the
`KiwiFromScratchTests` target and choose the "Build Phases" tab. Expand the
"Target Dependencies" section and add the Kiwi target using the "+" button.

  ![](https://github.com/navellabs/KiwiFromScratch/raw/master/docs/kiwidependency.png)

Then expand the "Link Binary with Libraries" section and add the `libKiwi.a`
library to the list.

  ![](https://github.com/navellabs/KiwiFromScratch/raw/master/docs/linkkiwi.png)

Finally, tell Xcode where these external headers are located by clicking on the
"Build Settings" tab and looking for the parameter "User Header Search Paths".
Double click it, and add `Kiwi/Kiwi` as shown:

  ![](https://github.com/navellabs/KiwiFromScratch/raw/master/docs/headersearch.png)

Run the tests by choosing "Test" from the "Product" menu.

Enjoy!

Jonathan Penn

<http://cocoamanifest.net>

