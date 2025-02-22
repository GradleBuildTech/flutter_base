import 'package:flutter/material.dart';

import '../../BaseClasses/BaseInteractorClasses.dart';
import '../Entity/TabModel.dart';

class MainTabViewModel {
  List<TabModel>? tabs;

  MainTabViewModel({
    this.tabs,
  });
}

class MainTabInteractor implements BaseInteractor {

  MainTabViewModel viewModel = MainTabViewModel(
    tabs: [
      TabModel(
        tabName: 'tab1',
        body: Container(
          child: Text('Page 1'),
        ),
      ),
      TabModel(
        tabName: 'tab2',
        body: Container(
          child: Text('Page 2'),
        ),
      ),
      TabModel(
        tabName: 'tab3',
        body: Container(
          child: Text('Page 3'),
        ),
      )
    ],
  );
}
