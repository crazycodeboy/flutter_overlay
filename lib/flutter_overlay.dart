library flutter_overlay;

import 'package:flutter/widgets.dart';

///全屏透明浮层
class HiOverlay {
  static Future<String> show(BuildContext context,
      {@required Widget child}) async {
    return Navigator.of(context).push(_HiOverlay(child));
  }

  static void close(BuildContext context) {
    return Navigator.of(context).pop();
  }
}

class _HiOverlay extends ModalRoute<String> {
  final Widget child;

  _HiOverlay(this.child);

  ///转场时间
  @override
  Duration get transitionDuration => Duration(milliseconds: 200);

  ///转场完成后是否覆盖先前的路由，设置成false否则无法透明
  @override
  bool get opaque => false;

  ///点击对话框以外的区域是否隐藏对话框
  @override
  bool get barrierDismissible => true;

  ///定义背景色
  @override
  Color get barrierColor => const Color(0x01000000);

  ///用于返回给辅助工具(无障碍访问，类似于iOS的VoiceOver)的标签
  @override
  String get barrierLabel => null;

  ///当路由处于非激活状态时是否保存在内存中
  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return child;
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      ),
      child: child,
    );
  }
}
