import 'ArticleModel.dart';

class RestaurantModel extends ArticleModel {
  final String rate;
  final String sale;

  RestaurantModel(
    String image,
    String title,
    String subtitle,
    String description,
    this.rate,
    this.sale,
  ) : super(
          image,
          title,
          subtitle,
          description,
        );
}
