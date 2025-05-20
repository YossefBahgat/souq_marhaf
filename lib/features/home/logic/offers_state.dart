import 'package:equatable/equatable.dart';

import '../data/offer_model.dart';

abstract class OffersState extends Equatable {
  @override
  List<Object?> get props => [];
}

class OffersInitial extends OffersState {}

class OffersLoading extends OffersState {}

class OffersLoaded extends OffersState {
  final List<Offer> offers;

  OffersLoaded(this.offers);

  @override
  List<Object?> get props => [offers];
}

class OffersError extends OffersState {
  final String message;

  OffersError(this.message);

  @override
  List<Object?> get props => [message];
}
