import 'dart:math';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class RandomAvatar extends StatefulWidget {
  final double size;

  const RandomAvatar({required this.size, Key? key}) : super(key: key);

  @override
  State<RandomAvatar> createState() => _RandomAvatarState();
}

class _RandomAvatarState extends State<RandomAvatar> {
  Image _image =
      Image.network('https://i.pravatar.cc/120?img=${Random().nextInt(60)}');
  bool _loading = true;

  @override
  void initState() {
    super.initState();

    _image.image
        .resolve(const ImageConfiguration())
        .addListener(ImageStreamListener((image, synchronousCall) {
      if (mounted) {
        setState(() {
          _loading = false;
        });
      }
    }));
  }

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        clipBehavior: Clip.antiAlias,
        child: Builder(builder: (_) {
          if (_loading) {
            return Container(
                height: widget.size,
                width: widget.size,
                color: Color.fromARGB(30, 0, 0, 0),
                child: const Icon(FluentIcons.people_20_regular));
          }

          return SizedBox(
              height: widget.size, width: widget.size, child: _image);
        }));
  }
}
