# ChangeLog

The following are lists of the notable changes included with each release.
This is intended to help keep people informed about notable changes between
versions, as well as provide a rough history. Each item is prefixed with
one of the following labels: `Added`, `Changed`, `Deprecated`,
`Removed`, `Fixed`, `Security`. We also use [Semantic
Versioning](http://semver.org) to manage the versions of this library so
that you can set version constraints properly.

#### [Unreleased][unreleased] -

#### [v7.0.0][v7.0.0] - 2019-10-08

* Added SPM (Swift Package Manager) support

#### [v6.0.0][v6.0.0] - 2019-09-12

* Added `follow(theCenterOf:with:)`
* Added `precede(theCenterOf:with:)`
* Added `set(viewA, aboveTheCenterOf:)`
* Added `set(viewA, belowTheCenterOf:)`
* Removed `@discardableResult` from all functions

#### [v5.0.0][v5.0.0] - 2019-04-05

* Changed from Swift 4.0 to Swift 5.0

#### [v4.1.0][v4.1.0] - 2019-02-13

* Added `setAspectRatio` method
* Fixed `precedes(leadingEdgeOf:` & `precedes(leadingMarginOf:` so that `by:` is applied in the correct direction

#### [v4.0.0][v4.0.0] - 2018-12-05

* Fixed expand and limit family of functions to correctly limit/expand the entities

#### [v3.0.0][v3.0.0] - 2018-04-05

* Remove auto activate so that can be used with AutoLayout animations
* Remove functionality of setWidth & setHeight removing previous width height constraints
* Added `expandWidth` method
* Added `expandHeight` method
* Added `limitWidth` method
* Added `limitHeight` method

#### [v2.0.2][v2.0.2] - 2017-11-21

* Collapse macOS build config to eliminate some duplication and typos

#### [v2.0.1][v2.0.1] - 2017-11-21

* Fix macOS 10.13.1 support

#### [v2.0.0][v2.0.0] - 2017-11-20

* Added `cup` family of methods
* Change API style from UIView extension to Constraid methods
* Remove smurfy naming, ex: `Constraid.CostraridView` to `Constraid.View`
* Change `multiplier` param to `times` and position after `itemB`
* Changed to be compatible with Swift 4.0.2
* Added MacOS support, this includes all non-margin methods
* Change `constant` param to more meaningful contextual names, ex: offsetBy, insetBy
* Change `centerVertically` & `centerHorizontally` to `center(vertically...)`, etc.
* Change all methods to return collection of constraints, to allow activate/deactivate
* Fixed incorrect GitHub source path in Podspec
* Changed `sits(), follows(), precedes()` to `set(), follow(), procede()` respectively
* Added `equalize()`
* Added `matchWidth(of:)` and `matchHeight(of:)`
* Added `expand(fromWidthof)` and `expand(fromHeightOf)`
* Fixed bug with `center(horizontallyWithinMarginsOf:)`
* Fixed bug with `expand(fromBottomMarginOf:)` treating `constant` as a positive
* Fixed bug with `expand(fromTrailingMarginOf:)` treating `constant` as a positive
* Fixed bug with `expand(fromBottomEdgeOf:)` treating `constant` as a positive
* Fixed bug with `expand(fromTrailingEdgeOf:)` treating `constant` as a positive
* Fixed bug with `limit(byBottomMarginOf:)` treating `constant` as a positive
* Fixed bug with `limit(byTrailingMarginOf:)` treating `constant` as a positive
* Fixed bug with `limit(byBottomEdgeOf:)` treating `constant` as a positive
* Fixed bug with `limit(byTrailingEdgeOf:)` treating `constant` as a positive
* Fixed `flush(withEdge...)` issue where `constant` didn't behave as expected
* Fixed `flush(withMargin...)` issue where `constant` didn't behave as expected
* Fixed issue where `flush(withMarginsOf)`, `flush(withVerticalMarginsOf)`, and
  `flush(withHorizontalMarginsOf)` constant argument would not do what expected
* Fixed issue where `flush(withEdgesOf)`, `flush(withVerticalEdgesOf)`, and
  `flush(withHorizontalEdgesOf)` constant argument would not do what expected
* Fixed `by` on `sits(aboveTheTopEdgeOf)` and `sits(aboveTheTopMarginOf)` to not
  be inverted (**breaking change**)

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

[unreleased]: https://github.com/uptech/Constraid/compare/7.0.0...HEAD
[v7.0.0]: https://github.com/uptech/Constraid/compare/6.0.0...7.0.0
[v6.0.0]: https://github.com/uptech/Constraid/compare/5.0.0...6.0.0
[v5.0.0]: https://github.com/uptech/Constraid/compare/4.1.0...5.0.0
[v4.1.0]: https://github.com/uptech/Constraid/compare/4.0.0...4.1.0
[v4.0.0]: https://github.com/uptech/Constraid/compare/3.0.0...4.0.0
[v3.0.0]: https://github.com/uptech/Constraid/compare/2.0.2...3.0.0
[v2.0.2]: https://github.com/uptech/Constraid/compare/2.0.1...2.0.2
[v2.0.1]: https://github.com/uptech/Constraid/compare/2.0.0...2.0.1
[v2.0.0]: https://github.com/uptech/Constraid/compare/1.1.0...2.0.0
[v1.1.0]: https://github.com/uptech/Constraid/compare/1.0.2...1.1.0
[v1.0.2]: https://github.com/uptech/Constraid/compare/1.0.1...1.0.2
[v1.0.1]: https://github.com/uptech/Constraid/compare/1.0.0...1.0.1
[v1.0.0]: https://github.com/uptech/Constraid/compare/d21a21...1.0.0
