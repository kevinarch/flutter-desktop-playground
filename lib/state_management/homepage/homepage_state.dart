import 'package:equatable/equatable.dart';
import 'package:tuple/tuple.dart';

class HomePageState extends Equatable {
  String? activeItem;

  HomePageState({this.activeItem});

  HomePageState copyWith({String? activeItem}) {
    return HomePageState(activeItem: activeItem ?? this.activeItem
    );
  }

  @override
  List<Object?> get props => [activeItem];
}
