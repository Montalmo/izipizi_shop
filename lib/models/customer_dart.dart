import 'package:equatable/equatable.dart';

class Customer extends Equatable {
  String firstName;
  String secondName;

  Customer({
    required this.firstName,
    required this.secondName,
  });

  @override
  List<Object?> get props => [
        firstName,
        secondName,
      ];
}
