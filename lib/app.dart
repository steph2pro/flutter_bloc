import 'package:demo_bloc/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme/theme.dart';

class ThemeApp extends StatelessWidget{
  const ThemeApp({Key? Key}) : super(key:  Key);
  @override
  Widget build(BuildContext context){
    return BlocProvider(
      create: (context)=>ThemeCubit(),
      child: const ThemePage()
      );
  }
} 

