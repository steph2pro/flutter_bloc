import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//c'est la classe qui vas renvoiyer un nouvel etat
 class ThemeCubit extends Cubit<ThemeData> {
  
  ThemeCubit() : super(_defaultTheme);
  //initialisation du theme par defeaut 
  static final _defaultTheme=ThemeData(
    primarySwatch:Colors.blue,
    appBarTheme: const AppBarTheme(color: Colors.blue),
    brightness: Brightness.light,
  );

  //methode pour changer la couleur du theme
  void changeTheme(MaterialColor themeColor, Brightness themeBrightness){
    final colorTheme=ThemeData(
      primaryColor: themeColor,
      primarySwatch: themeColor,
      appBarTheme: AppBarTheme( color: themeColor),
      floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: themeColor),
      brightness: themeBrightness,
    );
  //emition d'un nouvel etat l'etat emit doit etre le meme que celui du cubit (ThemData)
    emit(colorTheme);
  }


 }
 