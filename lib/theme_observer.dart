import 'package:bloc/bloc.dart';

class ThemeBlocObserver extends BlocObserver {
  
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // TODO: implement onChange
    if (bloc is Cubit) print(change.toString());//affichage des changement dans la console
  }

}