import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitledbloc/models/Carts.dart';
import 'package:untitledbloc/web/apiservice.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial(clist: [])) {
    on<Fetch>((event, emit) async {
      Apiservice apiService = Apiservice();
      var list = await apiService.fetchData();
      emit(CartState(clist: list));
      // TODO: implement event handler
    });
  }
}
