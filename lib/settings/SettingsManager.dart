import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class SettingsManager {

  SharedPreferences prefs ;

  static Future<SettingsManager> getInstance() async {
    SettingsManager newSM = new SettingsManager();
    newSM.prefs = await SharedPreferences.getInstance();
    return newSM;
  }

  Future<bool> init() async {
    prefs = await SharedPreferences.getInstance();
    return true;
  }

  String get theme {
    return prefs.get( "theme" );
  }

  set theme ( String pTheme ){
    prefs.setString( "theme" , pTheme );
  }

  String get email {
    return prefs.get( "email" );
  }

  set email ( String pTheme ){
    prefs.setString( "email" , pTheme );
  }

  String get username {
    return prefs.get( "username" );
  }

  set username ( String pTheme ){
    prefs.setString( "username" , pTheme );
  }

  bool get showCompleted {
    return prefs.get( "showCompleted" );
  }

  set showCompleted ( bool showCompleted ){
    prefs.setBool( "showCompleted" , showCompleted );
  }

  String get sortString {
    return prefs.get( "sortString" );
  }

  set sortString ( String pSortString ){
    prefs.setString( "sortString" , pSortString );
  }

}