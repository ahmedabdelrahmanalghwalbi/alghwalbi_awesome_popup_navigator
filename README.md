   [![Watch the video](https://img.youtube.com/vi/jRLLqN39uiU/0.jpg)](https://www.youtube.com/watch?v=jRLLqN39uiU)

   
   # alghwalbi_awesome_popup Package

   It creates a popup widget with various properties using a beautiful transition between two widgets, using the [hero] transformation and the [navigation] transformation, which creates a smooth transition between the two widgets.


   ## Installation
    1. Add the package to your `pubspec.yaml` file:
    yaml
        dependencies:
            alghwalbi_awesome_popup: <-- Latest version>

    2. Run the following command to fetch the package:
    flutter pub get

    3. Import the package in your Dart file:
    import 'package:alghwalbi_awesome_popup/alghwalbi_awesome_popup.dart';

    4-Start using the AlghwalbiAwesomePopup widget in your Flutter application

   ## Usage
        import 'package:alghwalbi_awesome_popup/alghwalbi_awesome_popup.dart';

        AlghwalbiAwesomePopup(
            popupKey: "testPopupKey",
            shrinkedWidget: MyShrinkedWidget(),
            expandedWidget: MyExpandedWidget(),
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.red,
            isScrollable: false,
            scrollDirection: Axis.vertical,
            tooltip: "Click me to Popup !!!!!!!!",
            shapeBorder: RoundedRectangleBorder(),
        );

        This code demonstrates the usage of the `AlghwalbiAwesomePopup` class from the `alghwalbi_awesome_popup` package. It creates a popup widget with various properties like `popupKey`, `shrinkedWidget`, `expandedWidget`, `borderRadius`, `color`, `isScrollable`, `scrollDirection`, `tooltip`, and `shapeBorder`.

   ## Contributing
      Thank you for considering contributing to this project! To get started, please follow these guidelines:
      
      1. Fork the repository and clone it to your local machine.
      2. Create a new branch for your contribution:
         > git checkout -b feature/your-feature-name
      3. Make your desired changes or additions to the codebase.
      4. Write tests to ensure the functionality of your changes.
      5. Run the tests and make sure they pass:
         > flutter test
      6. Commit your changes with a descriptive commit message:
         > git push origin feature/your-feature-name
      8. Open a pull request on the original repository.

        Please ensure that your code follows the project's coding style and conventions. Also, make sure to provide a clear and detailed explanation of your changes in the pull request description.
        Contributions are greatly appreciated! If you have any questions or need further assistance, feel free to reach out to us.

        Happy coding!