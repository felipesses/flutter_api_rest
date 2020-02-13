import 'package:flutter_apirest/app/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apirest/app/app_widget.dart';
import 'package:flutter_apirest/shared/custom_dio/custom_dio.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [Dependency((i) => CustomDio())];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
