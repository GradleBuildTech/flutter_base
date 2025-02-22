import 'package:flutter/material.dart';

import '../../BaseClasses/BaseRouterClasses.dart';
import '../Presenter/MainTabPresenter.dart';


class MainTabRouter extends BaseRouter {
  @override
  void push(context, params, title) {
    super.push(context, params, title);
    Route route = MaterialPageRoute(builder: (context) {
      return MainTabPresenter().create(params);
    });
    Navigator.push(context, route);
  }
}
