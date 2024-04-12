import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vicious_plates/ctrls/gm_ctrl.dart';

class CurPlt extends StatefulWidget {
  final PltType type;
  final Function(Event event) callback;
  const CurPlt({required this.type, required this.callback, super.key});

  @override
  State<CurPlt> createState() => _CurPltState();
}

enum Event {
  left,
  right,
  tap,
  down,
}

class _CurPltState extends State<CurPlt> with TickerProviderStateMixin {
  final RxBool _tpd = false.obs;
  Offset start = Offset.zero;
  bool hasSelected = false;
  RxDouble left = (-999.0).obs;
  RxDouble right = (-999.0).obs;
  RxDouble down = (-999.0).obs;

  late Animation<double> _animLeft;
  late AnimationController ctrLeft = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );
  late Animation<double> _animRight;
  late AnimationController ctrRight = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );
  late Animation<double> _animDown;
  late AnimationController ctrDown = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _animLeft = Tween<double>(
        begin: Get.width / 2 - 62.5,
        end: 0,
      ).animate(ctrLeft);
      _animLeft.addListener(() {
        if (!ctrLeft.isCompleted && ctrLeft.isAnimating) {
          left.value = _animLeft.value;
        }
        if (_animLeft.isCompleted) {
          left.value = -999;
          ctrLeft.reset();
        }
      });

      _animRight = Tween<double>(
        begin: Get.width / 2 - 62.5,
        end: 0,
      ).animate(ctrRight);
      _animRight.addListener(() {
        if (!_animRight.isCompleted && ctrRight.isAnimating) {
          right.value = _animRight.value;
        }
        if (_animRight.isCompleted) {
          right.value = -999;
          ctrRight.reset();
        }
      });

      _animDown = Tween<double>(
        begin: 231/2-62.5,
        end: 231+62.5,
      ).animate(ctrDown);
      _animDown.addListener(() {
        if (!_animDown.isCompleted && ctrDown.isAnimating) {
          down.value = _animDown.value;
        }
        if (_animDown.isCompleted) {
          down.value = -999;
          ctrDown.reset();
        }
      });
    });
  }

  String get _pltPath {
    switch (widget.type) {
      case PltType.white:
        return 'assets/wp.png';
      case PltType.red:
        return 'assets/rp.png';
      case PltType.blue:
        return 'assets/bp.png';
      case PltType.black:
        return 'assets/blp.png';
    }
  }

  String get _brPltPath {
    switch (widget.type) {
      case PltType.white:
        return 'assets/brwp.png';
      case PltType.red:
        return 'assets/brrp.png';
      case PltType.blue:
        return 'assets/brbp.png';
      case PltType.black:
        return 'assets/brblp.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Positioned(
          left: left.value == -999 ? null : left.value,
          right: right.value == -999 ? null : right.value,
          top: down.value == -999 ? null : down.value,
          child: GestureDetector(
            onHorizontalDragStart: (details) {
              start = details.globalPosition;
            },
            onHorizontalDragUpdate: (details) {
              if (!hasSelected) {
                if (start.dx - details.globalPosition.dx > 20) {
                  ctrLeft.forward();
                  widget.callback(Event.left);
                  hasSelected = true;
                }
                if (start.dx - details.globalPosition.dx < -20) {
                  ctrRight.forward();
                  widget.callback(Event.right);
                  hasSelected = true;
                }
                if (start.dy - details.globalPosition.dy < -20) {
                  ctrDown.forward();
                  print(Get.height);
                  widget.callback(Event.down);
                  hasSelected = true;
                }
              }
            },
            onHorizontalDragEnd: (details) {
              start = Offset.zero;
              hasSelected = false;
            },
            onTap: () async {
              if (!_tpd.value) {
                _tpd.value = true;
                widget.callback(Event.tap);
                await Future.delayed(const Duration(milliseconds: 300));
                _tpd.value = false;
              }
            },
            child: Obx(
              () => Image.asset(
                _tpd.value ? _brPltPath : _pltPath,
                filterQuality: FilterQuality.high,
                width: _tpd.value ? 141 : 133,
              ),
            ),
          )),
    );
  }
}
