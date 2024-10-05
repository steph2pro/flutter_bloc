import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';
import 'theme_observer.dart';
void main(){
  //on connecte notre app avec le block observer
  // BlocOverrides.runZoned(
  //   ()=> runApp(const ThemeApp()),
  //   blocObserver: ThemeBlocObserver()
  // );
  Bloc.observer = ThemeBlocObserver();
  runApp(const ThemeApp());
}