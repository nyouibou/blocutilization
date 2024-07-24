part of 'cart_bloc.dart';

class CartState {
  List<Carts>? clist;
  CartState({required this.clist});
}

final class CartInitial extends CartState {
  CartInitial({required super.clist});
}
