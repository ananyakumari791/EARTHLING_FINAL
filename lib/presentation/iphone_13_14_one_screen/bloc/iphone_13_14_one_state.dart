// ignore_for_file: must_be_immutable

part of 'iphone_13_14_one_bloc.dart';

/// Represents the state of Iphone1314One in the application.
class Iphone1314OneState extends Equatable {
  Iphone1314OneState({this.iphone1314OneModelObj});

  Iphone1314OneModel? iphone1314OneModelObj;

  @override
  List<Object?> get props => [
        iphone1314OneModelObj,
      ];
  Iphone1314OneState copyWith({Iphone1314OneModel? iphone1314OneModelObj}) {
    return Iphone1314OneState(
      iphone1314OneModelObj:
          iphone1314OneModelObj ?? this.iphone1314OneModelObj,
    );
  }
}
