# Test

<img src="http://media.upte.ch/images/mascot.png" alt="Crazy Man in Straight Jacket" align="left" \>

<a href="https://gitter.im/uptech/Constraid?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge">
  <img src="https://badges.gitter.im/uptech/Constraid.svg" align="right" alt="Join the chat at https://gitter.im/uptech/Constraid"\>
</a>

<a href="https://github.com/Carthage/Carthage">
  <img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" align="right"\>
</a>

<a href="https://travis-ci.org/uptech/Constraid">
  <img src="https://travis-ci.org/uptech/Constraid.svg?branch=master" align="right"\>
</a>

# Constraid

Constraid is your personal `NSLayoutConsraint` Aid. It's job is to make it as simple as
possible for you to programmatically use AutoLayout in your iOS & MacOS projects.

For example if you have a child view (`childView`) added as a subview of a parent
view (`parentView`) and you want that child view to match the width of the parent view you would
normally do the following with AutoLayout:

```swift
childView.translatesAutoresizingMaskIntoConstraints = false

NSLayoutConstraint.activate([
    NSLayoutConstraint(
        item: childView,
        attribute: .leadingEdge,
        relatedBy: .equal,
        toItem: parentView,
        attribute: .leadingEdge,
        multiplier: 1.0,
        constant: 0.0
    ),
    NSLayoutConstraint(
        item: childView,
        attribute: .trailingEdge,
        relatedBy: .equal,
        toItem: parentView,
        attribute: .trailingEdge,
        multiplier: 1.0,
        constant: 0.0
    )
])
```

However, with the aid of [Constraid][constraid] it is as simple as

```swift
childView.flush(withVerticalEdgesOf: parentView)
```

<img src="http://media.upte.ch/images/mascot_woman.png" alt="Crazy Woman in Straight Jacket" align="right" \>

## Usage

[Constraid][constraid] tries to simplify things by building on top of the lower level
constructs provided by Apple's AutoLayout system.

In general [Constraid][constraid] extends `UIView` to have a number of methods that aid with
defining constraint relationships between views. Currently, the provided methods are grouped
into the following sections.

### Flush

Lets say you want `viewA` to sit flush or right along `viewB`'s edges, meaning be
sized the same size as `viewB`. You can accomplish this by using the following:

```swift
viewA.flush(withEdgesOf: viewB)
```

If on the other hand you wanted `viewA` to fill the space of `viewB` up to `viewB`'s
margins, you could simply do.

```swift
viewA.flush(withMarginsOf: viewB)
```

The `flush` methods simply create one or more equivalency constraints between the two views
and the appropriate attributes. List of the short versions of all the `flush` methods are
provided below.

```swift
viewA.flush(withLeadingEdgeOf: viewB)
viewA.flush(withTrailingEdgeOf: viewB)
viewA.flush(withTopEdgeOf: viewB)
viewA.flush(withBottomEdgeOf: viewB)

viewA.flush(withVerticalEdgesOf: viewB)
viewA.flush(withHorizontalEdgesOf: viewB)

viewA.flush(withEdgesOf: viewB)

viewA.flush(withLeadingMarginOf: viewB)
viewA.flush(withTrailingMarginOf: viewB)
viewA.flush(withTopMarginOf: viewB)
viewA.flush(withBottomMarginOf: viewB)

viewA.flush(withVerticalMarginsOf: viewB)
viewA.flush(withHorizontalMarginsOf: viewB)

viewA.flush(withMarginsOf: viewB)
```

<img src="http://media.upte.ch/images/first_aid_case.png" alt="First Aid Case" align="left" height="120px" hspace="20px" vspace="30px" \>

### Center

Ok so you want `viewA` to be centered inside of `viewB`'s edges. You can accomplish this by
using the following:

```swift
viewA.center(within: viewB)
```

If on the other hand you wanted `viewA` to be centred inside of `viewB`s margins you could
simply do.

```swift
viewA.center(withinMarginsOf: viewB)
```

The `center` methods simply create one or more equivalency constraints between the two views
and the appropriate attributes (`centerX`, `centerY`, `centerXwithinMargins`,
`centerYwithinMargins`). List of the short versions of all the `center` methods are
provided below.

```swift
viewA.center(verticallyWithin: viewB)
viewA.center(horizontallyWithin: viewB)

viewA.center(within: viewB)

viewA.center(verticallyWithinMarginsOf: viewB)
viewA.center(horizontallyWithinMarginsOf: viewB)

viewA.center(withinMarginsOf: viewB)
```

### Manage Size

Lets say you want `viewA`'s width to be explicitly sized to some 100 pts. You can accomplish
this by using the following:

```swift
viewA.setWidth(100)
```

<img src="http://media.upte.ch/images/bandaid.png" alt="Bandaid" align="right" height="120px" hspace="20px" vspace="30px" \>

If on the other hand you wanted `viewA`'s height to be explicitly sized to 100 pts you would
do.

```swift
viewA.setHeight(100)
```

The `setWidth` and `setHeght` methods simply create one or more equivalency constraints
between the view and the appropriate attributes. List of the short versions of all the
`setWidth` and `setHeight` methods are provided below.

```swift
viewA.setWidth(_ constant:)
viewA.setHeight(_ constant:)
```

Similarly, if you want to make the width of one view equal to another view's width you can do this:

```swift
viewA.matchWidth(of: viewB)
```

And for the height:

```swift
viewA.matchHeight(of: viewB)
```

When you want to make a view's hieght and width equal you can do:
```swift
viewA.makeSquare()
```

### Manage Relative Position

Lets say you want `viewA` to be position right after `viewB`'s edge. You can accomplish this
by using the following:

```swift
viewA.follows(theTrailingEdgeOf: viewB)
```

Or lets say you want `viewA` to be positioned in front of `viewB`'s edge. You could do the
following.

```swift
viewA.precedes(theLeadingEdgeOf: viewB)
```

If on the other hand you want to control the vertical position you can use `sits`.

These methods simply create one or more equivalency constraints between the two views and the
appropriate attributes. List of the short versions of all the these methods are provided
below.

```swift
viewA.follows(theTrailingEdgeOf:)
viewA.follows(theTrailingMarginOf:)

viewA.precedes(theLeadingEdgeOf:)
viewA.precedes(theLeadingMarginOf:)

viewA.sits(aboveTheTopEdgeOf:)
viewA.sits(aboveTheTopMarginOf:)
viewA.sits(belowTheBottomEdgeOf:)
viewA.sits(belowTheBottomMarginOf:)
```

<img src="http://media.upte.ch/images/not_infinity.png" alt="Not Infinity" align="left" height="70px" hspace="20px" vspace="20px" \>

### Limit

Lets say you want `viewA` to be limited by `viewB`'s edges. You can accomplish this by using
the following:

```swift
viewA.limit(byEdgesOf: viewB)
```

This sets up constraints saying that each of `viewA`'s edges must be `<=` `viewB`'s
respective edges.

If on the other hand you wanted `viewA` limited by `viewB`s margins you could
simply do.

```swift
viewA.limit(byMarginsOf: viewB)
```

The `limit` methods simply create one or more `<=` constraints between the two views and the
appropriate attributes. List of the short versions of all the `limit` methods are provided
below.

```swift
viewA.limit(byLeadingEdgeOf: viewB)
viewA.limit(byTrailingEdgeOf: viewB)
viewA.limit(byTopEdgeOf: viewB)
viewA.limit(byBottomEdgeOf: viewB)

viewA.limit(byVerticalEdgesOf: viewB)
viewA.limit(byHorizontalEdgesOf: viewB)

viewA.limit(byEdgesOf: viewB)

viewA.limit(byLeadingMarginOf: viewB)
viewA.limit(byTrailingMarginOf: viewB)
viewA.limit(byTopMarginOf: viewB)
viewA.limit(byBottomMarginOf: viewB)

viewA.limit(byVerticalMarginsOf: viewB)
viewA.limit(byHorizontalMarginsOf: viewB)

viewA.limit(byMarginsOf: viewB)
```

### Expand

Lets say you want `viewA` to be expanded from `viewB`'s edges out. You can accomplish this
by using the following:

```swift
viewA.expand(fromEdgesOf: viewB)
```

This sets up constraints saying that each of `viewA`'s edges must be `>=` `viewB`'s
respective edges.

If on the other hand you wanted `viewA` to be expanded from `viewB`s margins you could
simply do.

```swift
viewA.expand(fromMarginsOf: viewB)
```

The `expand` methods simply create one or more `>=` constraints between the two views and
the appropriate attributes. List of the short versions of all the `expand` methods are
provided below.

```swift
viewA.expand(fromLeadingEdgeOf: viewB)
viewA.expand(fromTrailingEdgeOf: viewB)
viewA.expand(fromTopEdgeOf: viewB)
viewA.expand(fromBottomEdgeOf: viewB)

viewA.expand(fromVerticalEdgesOf: viewB)
viewA.expand(fromHorizontalEdgesOf: viewB)

viewA.expand(fromEdgesOf: viewB)

viewA.expand(fromLeadingMarginOf: viewB)
viewA.expand(fromTrailingMarginOf: viewB)
viewA.expand(fromTopMarginOf: viewB)
viewA.expand(fromBottomMarginOf: viewB)

viewA.expand(fromVerticalMarginsOf: viewB)
viewA.expand(fromHorizontalMarginsOf: viewB)

viewA.expand(fromMarginsOf: viewB)

viewA.expand(fromWidthOf: viewB)
viewA.expand(fromHeightOf: viewB)
```

### Manage Intrinsic Size Relations

These allow you to define the content hugging and compression resistance priorities and
constraints for a given view. *Note:* The priorities are linked so that they will be the
same. If you want to set them independently you should use the native API provided by Apple
for this.

```swift
viewA.keepIntrinsicHeight(priority:)
viewA.keepIntrinsicWidth(priority:)

viewA.keepIntrinsicSize(priority:)
```

## Build

We supports [Carthage][carthage] and therefore this project can be built using the folowing.

```
carthage build --no-skip-current
```

However, if you don't want to use [Carthage][carthage] or you are having difficulties with
build failures you can try the following which should provide some more details.

```
xcodebuild -scheme Constraid-MacOS -project Constraid.xcodeproj build
xcodebuild -scheme Constraid-iOS -project Constraid.xcodeproj build
```

## License

`Constraid` is Copyright © 2017 UpTech Works, LLC. It is free software, and
may be redistributed under the terms specified in the LICENSE file.

## Our Mascots

The mascots for our project are the work of [Ron Leishman][]. We licensed them and they are
available for licensing if you like from [shutterstock][crazyman].

## About ![uptech](http://upte.ch/img/logo.png)

`Constraid` is maintained and funded by [UpTech Works, LLC][uptech], a
software design & development agency & consultancy.

We love open source software. See [our other projects][community] or
[hire us][hire] to design, develop, and grow your product.

[community]: https://github.com/uptech
[hire]: http://upte.ch
[uptech]: http://upte.ch
[carthage]: https://github.com/Carthage/Carthage
[constraid]: https://github.com/uptech/Constraid
[crazyman]: https://www.shutterstock.com/image-vector/crazy-cartoon-man-straight-jacket-193143881
[Ron Leishman]: https://www.shutterstock.com/g/Ron+Leishman
[travisproject]: https://travis-ci.org/uptech/Constraid
[gitterroom]: https://gitter.im/uptech/Constraid?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
