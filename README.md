[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)][carthage]

# Constraid

Constraid is your personal `NSLayoutConsraint` Aid. It's job is to make it as simple as
possible for you to programmatically use AutoLayout in your iOS projects.

## Build

We supports [Carthage][carthage] and therefore this project can be built using the folowing.

```
carthage build --no-skip-current
```

However, if you don't want to use [Carthage][carthage] or you are having difficulties with
build failures you can try the following which should provide some more details.

```
xcodebuild -scheme Constraid -project Constraid.xcodeproj build
```

## License

`Constraid` is Copyright © 2017 UpTech Works, LLC. It is free software, and
may be redistributed under the terms specified in the LICENSE file.

## About ![uptech](http://upte.ch/img/logo.png)

`Constraid` is maintained and funded by [UpTech Works, LLC][uptech], a
software design & development agency & consultancy.

We love open source software. See [our other projects][community] or
[hire us][hire] to design, develop, and grow your product.

[community]: https://github.com/uptech
[hire]: http://upte.ch
[uptech]: http://upte.ch
[carthage]: https://github.com/Carthage/Carthage
