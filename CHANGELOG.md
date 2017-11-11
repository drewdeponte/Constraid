# ChangeLog

The following are lists of the notable changes included with each release.
This is intended to help keep people informed about notable changes between
versions, as well as provide a rough history. Each item is prefixed with
one of the following labels: `Added`, `Changed`, `Deprecated`,
`Removed`, `Fixed`, `Security`. We also use [Semantic
Versioning](http://semver.org) to manage the versions of this library so
that you can set version constraints properly.

#### [Unreleased][unreleased] -

* Switch Size Management out of the extension approach
* Switch to Constraid.center() instead of extension approach
* Change order of multiplier in flush() params and label it times
* Switch to Constraid.flush() instead of extension approach
* Rename ConstraidConstraintCollection type to ConstraintCollection
* Rename ConstraidLayoutPriority type aliases to LayoutPriority type aliases
* Rename ConstraidView type alias to View as it is namespaced by the module
* Update to be compatible with Swift 4
* Rename the `center(...)` family of methods to `middle(...)`
* Document the `center(withinEdgesOf:)` and `center(withinMarginsOf:)` families
* Document the `flush(withEdgesOf:)` and `flush(withMarginsOf:)` families
* Deprecated `center(withinMarginsOf:)` use `center(withinMarginsOf:, offsetBy:)`
* Deprecated `center(withinEdgesOf:)` use `center(withinEdgesOf:, offsetBy:)`
* Deprecated `expand(fromMarginsOf:, constant:)` family use `expand(fromMarginsOf:, offsetBy:)`
* Deprecated `expand(fromEdgesOf:, constant:)` family use `expand(fromEdgesOf:, offsetBy:)`
* Deprecated `limit(byMarginsOf:, constant:)` family use `limit(byMarginsOf:, insetBy:)`
* Deprecated `limit(byEdgesOf:, constant:)` family use `limit(byEdgesOf:, insetBy:)`
* Deprecated `flush(withMarginsOf:, constant:)` use `flush(withMarginsOf:, insetBy:)`
* Deprecated `flush(withEdgesOf:, constant:)` use `flush(withEdgesOf:, insetBy:)`
* Deprecated `centerVertically` & `centerHorizontally` use `center(vertically...)` and `center(horizontally...)`
* Changed Expand From Size methods to return collection of constraints
* Changed Manage Size methods to return collection of constraints
* Changed Manage Relative Position family of methods to return collection of constraints
* Changed `expand(fromMarginsOf:)` family to return collection of constraints
* Changed `expand(fromEdgesOf:)` family to return collection of constraints
* Changed `limit(byMarginsOf:)` family to return collection of constraints
* Changed `limit(byEdgesOf:)` family to return collection of constraints
* Changed center methods to return constraint collections
* Changed `flush(withMargin...)` methods to return collection of constraints
* Changed `flush(withEdge...)` methods to return collection of constraints
* Backfilled tests for ConstraintCollection
* Backfilled tests for Expand From Size methods
* Backfilled tests for Manage Size methods
* Backfilled tests for Manage Intrinsic Size Relations methods
* Backfilled tests for Manage Relative Position family of methods
* Backfilled tests for `expand(fromMarginsOf:)` family of methods
* Backfilled tests for `expand(fromEdgesOf:)` family of methods
* Backfilled tests for `limit(byMarginsOf:)` family of methods
* Backfilled tests for `limit(byEdgesOf:)` family of methods
* Backfilled tests for center within edges and center within margins
* Fixed bug with `expand(fromBottomMarginOf:)` treating `constant` as a positive
  (**breaking change**)
* Fixed bug with `expand(fromTrailingMarginOf:)` treating `constant` as a positive
  (**breaking change**)
* Fixed bug with `expand(fromBottomEdgeOf:)` treating `constant` as a positive
  (**breaking change**)
* Fixed bug with `expand(fromTrailingEdgeOf:)` treating `constant` as a positive
  (**breaking change**)
* Fixed bug with `limit(byBottomMarginOf:)` treating `constant` as a positive
  (**breaking change**)
* Fixed bug with `limit(byTrailingMarginOf:)` treating `constant` as a positive
  (**breaking change**)
* Fixed bug with `limit(byBottomEdgeOf:)` treating `constant` as a positive
  (**breaking change**)
* Fixed bug with `limit(byTrailingEdgeOf:)` treating `constant` as a positive
  (**breaking change**)
* Fixed `flush(withEdge...)` issue where `constant` didn't behave as expected
  (**breaking change**)
* Fixed `flush(withMargin...)` issue where `constant` didn't behave as expected
  (**breaking change**)
* Fixed issue where `flush(withMarginsOf)`, `flush(withVerticalMarginsOf)`, and
  `flush(withHorizontalMarginsOf)` constant argument would not do what expected
  (**breaking change**)
* Fixed issue where `flush(withEdgesOf)`, `flush(withVerticalEdgesOf)`, and
  `flush(withHorizontalEdgesOf)` constant argument would not do what expected
  (**breaking change**)
* Fixed `by` on `sits(aboveTheTopEdgeOf)` and `sits(aboveTheTopMarginOf)` to not
  be inverted (**breaking change**)
* Fixed bug with `center(horizontallyWithinMarginsOf:)` (**breaking change**)
* Added MacOS support, this includes all non-margin methods
* Fixed incorrect GitHub source path in Podspec
* Added `makeSquare()`
* Added `matchWidth(of:)` and `matchHeight(of:)`
* Added `expand(fromWidthof)` and `expand(fromHeightOf)`

#### [v1.1.0][v1.1.0] - 2017-01-07

* Changed `sitsOn(theTopEdgeOf)` to `sits(aboveTheTopEdgeOf)`
  (**breaking change**)
* Changed `sitsUnder(theBottomEdgeOf)` to `sits(belowTheBottomEdgeOf)`
  (**breaking change**)
* Added `precedes(theLeadingMarginOf)`, `follows(theTrailingMarginOf)`
* Added Podspec

#### [v1.0.2][v1.0.2] - 2017-01-07

* Fixed bug where precedes attributes were flipped (**breaking change**)

#### [v1.0.1][v1.0.1] - 2017-01-07

* Changed minimum deployment target from iOS 10 to iOS 9

#### [v1.0.0][v1.0.0] - 2017-01-07

* Added `centerVertically(within)`, `centerHorizontally(within)`
* Added `center(within)`
* Added `centerVertically(withinMarginsOf)`,
  `centerHorizontally(withinMarginsOf)`
* Added `center(withinMarginsOf)`
* Added `expand(fromTopEdgeOf)`, `expand(fromBottomEdgeOf)`,
  `expand(fromLeadingEdgeOf)`, `expand(fromTrailingEdgeOf)`
* Added `expand(fromVerticalEdgesOf)`, `expand(fromHorizontalEdgesOf)`
* Added `expand(fromEdgesOf)`
* Added `expand(fromTopMarginOf)`, `expand(fromBottomMarginOf)`,
  `expand(fromLeadingMarginOf)`, `expand(fromTrailingMarginOf)`
* Added `expand(fromVerticalMarginsOf)`, `expand(fromHorizontalMarginsOf)`
* Added `expand(fromMarginsOf)`
* Added `flush(withLeadingEdgeOf)`, `flush(withTrailingEdgeOf)`,
  `flush(withTopEdgeOf)`, `flush(withBottomEdgeOf)`
* Added `flush(withHorizontalEdgesOf)`, `flush(withVerticalEdgesOf)`
* Added `flush(withEdgesOf)`
* Added `flush(withLeadingMarginOf)`, `flush(withTrailingMarginOf)`,
  `flush(withTopMarginOf)`, `flush(withBottomMarginOf)`
* Added `flush(withHorizontalMarginsOf)`, `flush(withVerticalMarginsOf)`
* Added `flush(withMarginsOf)`
* Added `limit(byTopEdgeOf)`, `limit(byBottomEdgeOf)`, `limit(byLeadingEdgeOf)`,
  `limit(byTrailingEdgeOf)`
* Added `limit(byVerticalEdgesOf)`, `limit(byHorizontalEdgesOf)`
* Added `limit(byEdgesOf)`
* Added `limit(byTopMarginOf)`, `limit(byBottomMarginOf)`,
  `limit(byLeadingMarginOf)`, `limit(byTrailingMarginOf)`
* Added `limit(byVerticalMarginsOf)`, `limit(byHorizontalMarginsOf)`
* Added `limit(byMarginsOf)`
* Added `keepIntrinsicHeight()`, `keepIntrinsicWidth()`, `keepIntrinsicSize()`
* Added `follows(theTrailingEdgeOf)`, `precedes(theLeadingEdgeOf)`,
  `sitsOn(theTopEdgeOf)`, `sitsUnder(theBottomEdgeOf)`
* Added `setWidth(constant)`, `setHeight(constant)`

[unreleased]: https://github.com/uptech/Constraid/compare/1.1.0...HEAD
[v1.0.0]: https://github.com/uptech/Constraid/compare/d21a21...1.0.0
[v1.0.1]: https://github.com/uptech/Constraid/compare/1.0.0...1.0.1
[v1.0.2]: https://github.com/uptech/Constraid/compare/1.0.1...1.0.2
[v1.1.0]: https://github.com/uptech/Constraid/compare/1.0.2...1.1.0
