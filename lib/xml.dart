import 'package:xml/xml.dart';

void build_xml() {
  final b = XmlBuilder();
  b.processing('xml', 'version="1.0"');
  b.element('root', nest: () {
    b.element('meta', nest: () {
      b.attribute('name', "");
      b.element('icondata', nest: () {
        b.element('iconentry', nest: () {
          b.attribute('name', 'FolderSimple.ico');
          while(true) {
            b.element('ref', nest: () {
              
            });
          }
        });
      });
    });
    b.element('database', nest: () {});
  });
}
