import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import '../../application/services/product_service.dart';
import '../../data/datasources/product_remote_data_source.dart';
import '../../data/repositories/product_repository_impl.dart';
import '../../domain/models/product_model.dart';
import '../../domain/repositories/product_repository.dart';
import '../controllers/product_controller/product_controller.dart';

// Controller Provider
final productControllerProvider =
    StateNotifierProvider<ProductController, AsyncValue<List<ProductModel>>>(
  (ref) {
    final productService = ref.watch(productServiceProvider);
    return ProductController(productService: productService);
  },
);

// Service Provider
final productServiceProvider = Provider<ProductService>((ref) {
  final repository = ref.watch(productRepositoryProvider);
  return ProductService(productRepository: repository);
});

// Repository Provider
final productRepositoryProvider = Provider<ProductRepository>((ref) {
  final remoteDataSource = ref.watch(productRemoteDataSourceProvider);
  return ProductRepositoryImpl(remoteDataSource: remoteDataSource);
});

// Remote Data Source Provider
final productRemoteDataSourceProvider =
    Provider<ProductRemoteDataSource>((ref) {
  final client = ref.watch(httpClientProvider);
  return ProductRemoteDataSource(client: client);
});

// Http Client Provider
final httpClientProvider = Provider((ref) => http.Client());
