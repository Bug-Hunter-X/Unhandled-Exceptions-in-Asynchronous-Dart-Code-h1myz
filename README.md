# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: insufficient exception handling in asynchronous operations.  The `fetchData` function attempts to fetch data from a remote server.  However, its error handling is too generic, making debugging difficult.

The `bug.dart` file shows the problematic code. The `bugSolution.dart` file provides an improved version with more specific exception handling. 