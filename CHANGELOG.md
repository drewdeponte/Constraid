# ChangeLog

The following are lists of the notable changes included with each release.
This is intended to help keep people informed about notable changes between
versions, as well as provide a rough history. Each item is prefixed with
one of the following labels: `Added`, `Changed`, `Deprecated`,
`Removed`, `Fixed`, `Security`. We also use [Semantic
Versioning](http://semver.org) to manage the versions of this library so
that you can set version constraints properly.

#### [Unreleased][unreleased] -

* Deprecated `expand(fromEdgesOf:, constant:)` family use `expand(fromEdgesOf:, offsetBy:)`
* Deprecated `limit(byMarginsOf:, constant:)` family use `limit(byMarginsOf:, insetBy:)`
* Deprecated `limit(byEdgesOf:, constant:)` family use `limit(byEdgesOf:, insetBy:)`
* Backfilled tests for ConstraintCollection
* Backfilled tests for Expand From Size methods
* Changed Expand From Size methods to return collection of constraints
* Backfilled tests for Manage Size methods
* Changed Manage Size methods to return collection of constraints
* Backfilled tests for Manage Intrinsic Size Relations methods
* Backfilled test for Manage Relative Position family of methods
* Changed Manage Relative Position family of methods to return collection of constraints
* Backfilled test for `expand(fromMarginsOf:)` family of methods
* Fixed bug with `expand(fromBottomMarginOf:)` treating `constant` as a positive
  **breaking change**
* Fixed bug with `expand(fromTrailingMarginOf:)` treating `constant` as a positive
  **breaking change**
* Changed `expand(fromMarginsOf:)` family to return collection of constraints
* Backfilled test for `expand(fromEdgesOf:)` family of methods
* Fixed bug with `expand(fromBottomEdgeOf:)` treating `constant` as a positive
  **breaking change**
* Fixed bug with `expand(fromTrailingEdgeOf:)` treating `constant` as a positive
  **breaking change**
* Changed `expand(fromEdgesOf:)` family to return collection of constraints
* Backfilled test for `limit(byMarginsOf:)` family of methods
* Fixed bug with `limit(byBottomMarginOf:)` treating `constant` as a positive
  **breaking change**
* Fixed bug with `limit(byTrailingMarginOf:)` treating `constant` as a positive
  **breaking change**
* Changed `limit(byMarginsOf:)` family to return collection of constraints
* Backfilled test for `limit(byEdgesOf:)` family of methods
* Fixed bug with `limit(byBottomEdgeOf:)` treating `constant` as a positive
  **breaking change**
* Fixed bug with `limit(byTrailingEdgeOf:)` treating `constant` as a positive
  **breaking change**
* Changed `limit(byEdgesOf:)` family to return collection of constraints
* Deprecated `flush(withMarginsOf:, constant:)` use `flush(withMarginsOf:, insetBy:)`
* Deprecated `flush(withEdgesOf:, constant:)` use `flush(withEdgesOf:, insetBy:)`
* Deprecated `centerVertically` & `centerHorizontally` use `center(vertically...)` and `center(horizontally...)`
* Fixed bug with `center(horizontallyWithinMarginsOf:)`
* Changed center methods to return constraint collections
* Added tests for center within edges and center within margins
* Changed `centerVertically()` and `centerHorizontally` to
  `center(vertically...)` and `center(horizontally...)`
* Fixed `flush(withEdge...)` issue where `constant` didn't behave as expected
* Fixed `flush(withMargin...)` issue where `constant` didn't behave as expected
* Changed `flush(withEdge...)` methods to use `insetBy` instead of `constant`
* Changed `flush(withMargin...)` methods to use `insetBy` instead of `constant`
* Changed `flush(withMargin...)` methods to return collection of constraints
* Fixed issue where `flush(withMarginsOf)`, `flush(withVerticalMarginsOf)`, and
  `flush(withHorizontalMarginsOf)` constant argument would not do what expected
* Changed `flush(withEdge...)` methods to return collection of constraints
* Fixed issue where `flush(withEdgesOf)`, `flush(withVerticalEdgesOf)`, and
  `flush(withHorizontalEdgesOf)` constant argument would not do what expected
* Fixed `by` on `sits(aboveTheTopEdgeOf)` and `sits(aboveTheTopMarginOf)` to not
  be inverted
* Added MacOS support, this includes all non-margin methods
* Fixed incorrect GitHub source path in Podspec
* Added `makeSquare()`
* Added `matchWidth(of:)` and `matchHeight(of:)`
* Added `expand(fromWidthof)` and `expand(fromHeightOf)`

#### [v1.1.0][v1.1.0] - 2017-01-07

* Changed `sitsOn(theTopEdgeOf)` to `sits(aboveTheTopEdgeOf)`
* Changed `sitsUnder(theBottomEdgeOf)` to `sits(belowTheBottomEdgeOf)`
* Added `precedes(theLeadingMarginOf)`, `follows(theTrailingMarginOf)`
* Added Podspec

#### [v1.0.2][v1.0.2] - 2017-01-07

* Fixed bug where precedes attributes were flipped

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
