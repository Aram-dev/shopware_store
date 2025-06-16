import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../domain/usecases/shopware/shopware_store_use_case.dart';
import '../bloc/base/base.dart';
import '../bloc/shopware_products_bloc.dart';

@RoutePage()
class ShopwareProductsScreen extends StatefulWidget {
  const ShopwareProductsScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ShopwareProductsScreenState();
}

class _ShopwareProductsScreenState extends State<ShopwareProductsScreen> {
  final _productBloc = ProductBloc(GetIt.I<ShopwareProductsUseCase>());

  @override
  void initState() {
    _productBloc.add(LoadShopwareProducts());
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ProductBloc, ShopwareProductsState>(
        bloc: _productBloc,
        builder: (context, state) {
          if (state is ShopwareProductsLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is ShopwareProductsLoaded) {
            final products = state.shopwareProducts.elements ?? List.empty();
            if (products.isEmpty) {
              return const Center(child: Text("No products found."));
            }
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                final imageUrl =
                    product.cover?.media?.url ??
                    'https://via.placeholder.com/120x120?text=No+Image';
                final title = product.name ?? 'No Name';
                final description = product.description ?? '';
                final price = product.calculatedPrice?.unitPrice ?? 0.0;

                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        // Product Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            imageUrl,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                            errorBuilder: (ctx, _, __) => Container(
                              width: 80,
                              height: 80,
                              color: Colors.grey[200],
                              child: const Icon(Icons.broken_image, size: 40),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Product Info
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 6),
                              Text(
                                description,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[700],
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '\$${price.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        // Add to Cart Button (display only)
                        ElevatedButton(
                          onPressed: null,
                          child: const Text('Add to Cart'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          if (state is ShopwareProductsLoadingFailure) {
            return Center(child: Text(state.exception.toString()));
          }
          return const SizedBox.shrink();
        },
      );
}
