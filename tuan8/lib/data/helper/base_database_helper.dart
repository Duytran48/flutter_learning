import '../model/category.dart';
import '../model/product.dart';

abstract class BaseDatabaseHelper {
  Future<void> insertCategory(CategoryModel categoryModel);
  Future<List<CategoryModel>> categories();
  Future<CategoryModel> category(int id);
  Future<void> updateCategory(CategoryModel categoryModel);
  Future<void> deleteCategory(int id);

  Future<void> insertProduct(ProductModel productModel);
  Future<List<ProductModel>> products();
  Future<ProductModel> product(int id);
  Future<void> updateProduct(ProductModel productModel);
  Future<void> deleteProduct(int id);
}

