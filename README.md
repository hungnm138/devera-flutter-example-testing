<p align="center">
  <a href="https://devera.vn/">
    <img src="https://i.ibb.co/g9xNY1k/Devera-Logo.png" alt="Logo" width=151 height=127 />
  </a>
</p>

<p align="center">
  <a href="https://flutter.dev">
    <img src="https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter" alt="Platform Flutter"/>
  </a>
  <a href="https://flutter.dev">
    <img src="https://img.shields.io/badge/Made%20with-Love-1f425f.svg" alt="Made with Love"/>
  </a>
</p>

<p align="center">
  <a href="www.buymeacoffee.com/hungnm138">
    <img src="https://img.shields.io/badge/Buy%20Me%20a%20Coffee-ffdd00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black" alt="Buy me a coffee" />
  </a>
</p>

<h1 align="center">Flutter Testing Examples</h1>

<p align="center">An example app that demonstrates how to test your app in Flutter.</p>

<br>

# Getting Started

This project is used in [Devera](https://devera.vn) Flutter course to demonstrate how to test your Flutter app.

# Introduction

The more features your app has, the harder it is to test manually. Automated tests help ensure that your app performs correctly before you publish it, while retaining your feature and bug fix velocity.

Automated testing falls into a few categories:

- **A unit test** tests a single function, method, or class. Test executed on the unit level, that is, very small (often atomic) pieces of code, such as individual classes or functions. Unit tests verify that one particular unit functions correctly and maintains its "contract" to the outside world in all cases.
- **A widget test** tests a single widget (in other UI frameworks referred to as component test). Performed on the layer of individual Flutter widgets. Widgets tests verify whether -- or how often -- a widget is present in the widget tree.
- **An integration test** tests a complete app or a large part of an app. Performed on multiple units of functionality with a focus on verifying the interplay between those units is correct and fulfills an expected outcome.

# How to use

## Step 1: Download or clone this repository.

> https://github.com/hungnm138/devera-flutter-example-testing

## Step 2: Run the tests

### Run tests using IntelliJ or VSCode

The Flutter plugins for `IntelliJ` and `VSCode` support running tests. This is often the best option while writing tests because it provides the fastest feedback loop as well as the ability to set breakpoints.

<details>
	<summary><strong>IntelliJ</strong></summary>

- Open the `fraction_unit_test.dart` file (for example).
- Select the `Run` menu.
- Click the Run `tests in fraction_unit_test.dart` option (for example).
- *Alternatively, use the appropriate keyboard shortcut for your platform.*

</details>

<details style="margin-top: 10px;">
	<summary><strong>VSCode</strong></summary>

- Open the `fraction_unit_test.dart` file (for example).
- Select the `Run` menu.
- Click the `Start Debugging` option.
- *Alternatively, use the appropriate keyboard shortcut for your platform.*

</details>

<br/>

### Run tests in a terminal

You can also use a *terminal* to run the tests by executing the following command from the *root* of the project (for example):

> flutter test test/basic_unit_test/fraction_unit_test.dart

For the integration test:

> flutter drive --target=test_driver/app.dart

For more options regarding unit tests, you can execute this command:

> flutter test --help

<br/>

# Pub Packages

| Package  | Usage |
| ------ | ------ |
| [HTTP](https://pub.dev/packages/http) | A composable, multi-platform, Future-based API for HTTP requests.
| [Flutter Bloc](https://pub.dev/packages/flutter_bloc) | State management with BLoC pattern
| [Provider](https://pub.dev/packages/provider) | State management and context based DI
| [Bloc Test](https://pub.dev/packages/bloc_test) | A testing library which makes it easy to test blocs. Built to be used with the bloc package.
| [test](https://pub.dev/packages/test) | A full featured library for writing and running Dart tests across platforms.
| [Mockito](https://pub.dev/packages/mockito) | A mock framework with APIs for Fakes, Mocks, behavior verification, and stubbing.

# Conclusion

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

> Also, visit the [Devera Academy](https://devera.vn) website or [Facebook](https://www.facebook.com/DeveraAcademy/) fanpage to find out more about the courses.

<br/>

<p align="center">
  <a href="https://www.buymeacoffee.com/hungnm138" target="_blank">
    <img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important; border-radius: 5px !important;" >
  </a>
</p>
