import 'package:classic_shop/src/features/checkout/core/data/checkout_api.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';

class CheckoutRemoteService {
  CheckoutRemoteService(this._checkoutApi);

  final CheckoutApi _checkoutApi;

  Future<void> checkout({
    required int userId,
    required int cartId,
    required int userAddressId,
    required int paymentTypeId,
    required int shippingMethodId,
    required int orderStatusId,
    required num orderTotal,
  }) async {
    final response = await _checkoutApi.checkout(
      userId: userId.toString(),
      cartId: cartId.toString(),
      data: {
        'user_address_id': userAddressId,
        'payment_type_id': paymentTypeId,
        'shipping_method_id': shippingMethodId,
        'order_status_id': orderStatusId,
        'order_total': orderTotal.toStringAsFixed(2),
      },
    );

    if (!response.isSuccessful) {
      throw RestApiException(response.statusCode);
    }
  }
}
