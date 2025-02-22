import 'package:flutter/material.dart';

import '../../BaseClasses/BasePresenterClasses.dart';
import '../Entity/TabModel.dart';
import '../Interactor/MainTabInteractor.dart';
import '../View/MainTabView.dart';


class MainTabPresenter implements BasePresenter {
  @override
  Widget create(List<TabModel> params) {
    return MainTabView(
      views: MainTabInteractor().viewModel.tabs,
      presenter: this,
    );
  }

  void tabChanged(int index) {
    print('tab changed to: $index');
  }
}
