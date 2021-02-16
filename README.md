# flutter_overlay

[![pub package](https://img.shields.io/pub/v/flutter_overlay.svg)](https://pub.dartlang.org/packages/flutter_overlay)
[ ![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg)](https://github.com/crazycodeboy/flutter_overlay/pulls)
[ ![flutter_overlay release](https://img.shields.io/github/release/crazycodeboy/flutter_overlay.svg?maxAge=2592000?style=flat-square)](https://github.com/crazycodeboy/flutter_overlay/releases)

A transparent floating layer for flutter which can programmatically show and close the child. Works on iOS,Android and Web.


## Content

- [Examples](#examples)
- [Getting started](#getting-started)
- [Contribution](#contribution)

## Examples

* [Examples](https://github.com/crazycodeboy/flutter_overlay/tree/master/examples)

![flutter_overlay](https://raw.githubusercontent.com/crazycodeboy/flutter_overlay/master/screenshot/flutter_overlay.gif)




## Getting Started

>Step1:Write your overlay

```dart
  _dialog() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context, 'close');
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.black38),
        child: Center(
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.redAccent)),
        ),
      ),
    );
  }
```

>Step2:Show your overlay

```dart
HiOverlay.show(
  context,
  child: _dialog(),
).then((value) {
  print('---received:$value');
});
```
>Step3:Close your overlay

```dart
Navigator.pop(context, 'close');
```
## Contribution

Issues are welcome. Please add a screenshot of you bug and a code snippet. Quickest way to solve issue is to reproduce it in one of the examples.

Pull requests are welcome. If you want to change the API or do something big it is best to create an issue and discuss it first.

---

**[MIT Licensed](https://github.com/crazycodeboy/flutter_overlay/blob/master/LICENSE)**
