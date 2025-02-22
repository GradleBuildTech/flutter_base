import 'package:flutter/material.dart';

import '../../BaseClasses/BaseViewClasses.dart';
import '../Entity/TabModel.dart';
import '../Presenter/MainTabPresenter.dart';

class MainTabView extends StatefulWidget implements BaseView {
  const MainTabView({
    super.key,
    this.appBar,
    this.views,
    this.presenter,
  });


  final MainTabPresenter? presenter;

  // mainTab/appBar
  final PreferredSizeWidget? appBar;

  final List<TabModel>? views;

  @override
  _MainTabViewState createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController =  TabController(length: widget.views?.length ?? 0, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  List<Tab> createTabs() {
    return widget.views?.map((e) {
      return Tab(
        text: e.tabName,
        icon: e.icon,
      );
    }).toList() ?? [];
  }

  List<Widget> createBody() {
    return widget.views?.map((e) => e.body ?? Container()).toList() ?? [];
  }

  @override
  Widget build(BuildContext context) {
    print(widget.views?.map((e) => e.body));
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: widget.appBar,
      body: Material(
        child: TabBarView(
          controller: tabController,
          children: createBody(),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Material(
          color: Colors.blue,
          child: SafeArea(
            child: TabBar(
              onTap: (index) {
                widget.presenter?.tabChanged(index);
              },
              indicator: const BoxDecoration(),
              controller: tabController,
              tabs: createTabs(),
            ),
          ),
        ),
      ),
    );
  }
}
