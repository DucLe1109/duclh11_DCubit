import 'package:flutter/cupertino.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:getwidget/types/gf_loader_type.dart';

class DefaultLoadingWidget extends StatelessWidget {
  const DefaultLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: GFLoader(type: GFLoaderType.ios),
    );
  }
}
