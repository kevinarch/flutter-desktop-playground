import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_desktop_playground/state_management/homepage/homepage_cubit.dart';

class ChatMessageHeader extends StatelessWidget {
  const ChatMessageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<HomepageCubit, HomePageState>(builder: (_, state) {
            return Text(state.activeItem ?? '',
                style: Theme.of(context).textTheme.headline4);
          })
        ],
      ),
    );
  }
}
