import 'package:flutter_playground/values/imports.dart';
import 'package:mobx/mobx.dart';

part 'my_home_page_store.g.dart';

class MyHomePageStore = _MyHomePageStore with _$MyHomePageStore;

abstract class _MyHomePageStore with Store {
  @observable
  ObservableList<ExampleNames> exampleList = ObservableList<ExampleNames>();

  @observable
  ObservableList<ExampleNames> searchResult = ObservableList<ExampleNames>();

  @action
  void search(String query) {
    exampleList.forEach((ExampleNames example) {
      if (example.title.toLowerCase().contains(query.toLowerCase()))
        searchResult.add(example);
    });
  }

  @action
  void initList() {
    exampleList = ObservableList.of(<ExampleNames>[
      ExampleNames(Strings.appBarTitle),
      ExampleNames(Strings.TabBarTitle),
      ExampleNames(Strings.navigationDrawerTitle),
      ExampleNames(Strings.collapsibleToolbarTitle),
      ExampleNames(Strings.bottomNavigationTitle),
      ExampleNames(Strings.animatedIconsTitle),
      ExampleNames(Strings.animatedSizeTitle),
      ExampleNames(Strings.progressButtonTitle),
      ExampleNames(Strings.staggerDemoTitle),
      ExampleNames(Strings.stepperExampleTitle),
      ExampleNames(Strings.hardwareKeyExampleTitle),
      ExampleNames(Strings.dragDropExampleTitle),
      ExampleNames(Strings.textExampleExampleTitle),
      ExampleNames(Strings.animatedSwitcherExampleTitle),
      ExampleNames(Strings.aboutListTileExampleTitle),
      ExampleNames(Strings.lifeCycleStateExampleTitle),
//  ExampleNames(Strings.localAuthTitle),
      ExampleNames(Strings.rotatedBoxTitle),
      ExampleNames(Strings.nestedListTitle),
      ExampleNames(Strings.cupertinoTimerPickerTitle),
      ExampleNames(Strings.CupertinoActionSheetTitle),
      ExampleNames(Strings.CupertinoProgressIndicatorTitle),
      ExampleNames(Strings.GridPaperTitle),
      ExampleNames(Strings.ChipsExampleTitle),
      ExampleNames(Strings.ExpansionTileTitle),
      ExampleNames(Strings.RotationTransitionTitle),
      ExampleNames(Strings.FlowWidgetExampleTitle),
      ExampleNames(Strings.dismissibleExampleTitle),
      ExampleNames(Strings.BackdropFilterExampleTitle),
//  ExampleNames(Strings.googleMapsExampleTitle),
      ExampleNames(Strings.toolTipExampleTitle),
      ExampleNames(Strings.animatedCrossFadeExampleTitle),
      ExampleNames(Strings.flareTitle),
      ExampleNames(Strings.dataClassExampleTitle),
      ExampleNames(Strings.expandedExampleTitle),
      ExampleNames(Strings.wrapExampleTitle),
      ExampleNames(Strings.quickActionsTitle),
      ExampleNames(Strings.bottomAppBarTitle),
      ExampleNames(Strings.TransformExampleTitle),
      ExampleNames(Strings.admobPluginExample),
      ExampleNames(Strings.bottomSheetTitle)
    ]);
  }
}
