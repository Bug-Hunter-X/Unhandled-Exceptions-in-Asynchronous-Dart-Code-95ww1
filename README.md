# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: insufficient error handling in asynchronous operations. The `bug.dart` file shows an example of fetching data from an API.  This example lacks proper handling of potential exceptions, which can lead to unexpected program behavior.  The `bugSolution.dart` file provides an improved version with enhanced error handling.

## How to reproduce

1. Clone this repository.
2. Run `bug.dart`.
3. Observe the lack of robust error handling when the API call fails or returns invalid data.
4. Run `bugSolution.dart` to see how improved error handling addresses these issues.

## Solution

The improved version incorporates more comprehensive exception handling, including specific checks for HTTP status codes and JSON decoding errors.  This approach prevents the application from crashing and provides more informative error messages.