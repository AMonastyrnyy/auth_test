import 'package:flutter/widgets.dart';
import 'package:auth_test/app/app.dart';
import 'package:auth_test/home/home.dart';
import 'package:auth_test/login/login.dart';

List<Page<dynamic>> onGenerateAppViewPages(
    AppStatus state,
    List<Page<dynamic>> pages,
    ) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}