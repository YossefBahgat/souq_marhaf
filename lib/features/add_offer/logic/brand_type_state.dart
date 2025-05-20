import 'package:equatable/equatable.dart';

abstract class AddOfferState extends Equatable {
  const AddOfferState();

  @override
  List<Object?> get props => [];
}

class AddOfferInitial extends AddOfferState {}

class AddOfferUpdated extends AddOfferState {}

class AddOfferLoading extends AddOfferState {}

class AddOfferSuccess extends AddOfferState {}

class AddOfferFailure extends AddOfferState {
  final String error;

  const AddOfferFailure(this.error);

  @override
  List<Object?> get props => [error];
}
