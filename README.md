`rosstex.cls` file defines a series of behavior based on `amsart` class.

* Sections are now rearranged as Problems, while the Appendix remains the same.
* * The text that displays there can be modified using `\headertitle{}`.
* Builtin environment for Theorem, Lemma, Corollary, Definition, and more.
* `\title` is not necessarily defined. Instead, a variable defined using `\psetnum{}` gives you the option to directly input the number of the problem set. The title will then be automatically formulated as `Problem Set #{psetnum}`.
* Ross Program logo in the background! (Enabled using `\enablerosslogo` command)

**NOTE: `rosstex.cls` is now archived. RossTeX is now maintained under `notex.cls` as an option.**
