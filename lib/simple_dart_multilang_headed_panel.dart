import 'package:simple_dart_multilang_label/simple_dart_multilang_label.dart';
import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class MultilangHeadedPanel extends PanelComponent {
  MultilangHeadedPanel() : super('HeadedPanel') {
    vertical = true;
    addAll([header, contentPanel]);
  }

  void addContent(List<Component> childs) {
    contentPanel.addAll(childs);
  }

  MultilangLabel header = MultilangLabel()
    ..addCssClass('HeadedPanelHeader')
    ..visible = false
    ..width = '100%'
    ..padding = '10px';

  Panel contentPanel = Panel()
    ..spacing = '5px'
    ..padding = '10px'
    ..vertical = true
    ..fillContent = true;

  String get langKey => header.langKey;

  set langKey(String value) {
    header.langKey = value;
    if (value.isEmpty) {
      header.visible = false;
    } else {
      header.visible = true;
    }
  }
}
