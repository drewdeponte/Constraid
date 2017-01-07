[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Build

```
carthage build --no-skip-current
```

To identify details about build issues it may help to build it without Carthage as follows:

```
xcodebuild -scheme Constraid -project Constraid.xcodeproj build
```
