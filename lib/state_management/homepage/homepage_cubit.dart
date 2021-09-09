export 'homepage_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_desktop_playground/state_management/homepage/homepage_state.dart';

class HomepageCubit extends Cubit<HomePageState> {

  HomepageCubit() : super(HomePageState());

  void setActiveItem(String activeItem) {
    emit(HomePageState(activeItem: activeItem));
  }
}