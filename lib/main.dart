import 'package:comatecs/core/services/getit_service.dart';
import 'package:comatecs/core/services/shared_prefrences_singleton.dart';
import 'package:comatecs/core/utils/api_service.dart';
import 'package:comatecs/core/utils/app_theme.dart';
import 'package:comatecs/core/utils/bloc_observer.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/account/data/data_sources/remote_fetch_user_profile.dart';
import 'package:comatecs/features/account/data/repositories/account_repository_implementation.dart';
import 'package:comatecs/features/account/domain/use_case/fetch_user_profile_use_case.dart';
import 'package:comatecs/features/account/presentation/cubit/fetch_user_profile_cubit/fetch_user_profile_cubit.dart';
import 'package:comatecs/features/cart/domain/repositories/cart_repository.dart';
import 'package:comatecs/features/cart/domain/use_cases/add_to_cart_use_case.dart';
import 'package:comatecs/features/cart/domain/use_cases/fetch_cart_items_use_case.dart';
import 'package:comatecs/features/cart/domain/use_cases/remove_from_cart_use_case.dart';
import 'package:comatecs/features/cart/domain/use_cases/update_cart_item_quantity_use_case.dart';
import 'package:comatecs/features/cart/presentaion/cubits/add_and_remove_from_cart/add_and_remove_from_cart_cubit.dart';
import 'package:comatecs/features/cart/presentaion/cubits/fetch_cart_items/fetch_cart_items_cubit.dart';
import 'package:comatecs/features/cart/presentaion/cubits/update_quantity/update_quantity_cubit.dart';
import 'package:comatecs/features/favourite/domain/repositories/favourite_repository.dart';
import 'package:comatecs/features/favourite/domain/use_cases/add_to_favourite_use_case/add_to_favourite_use_case.dart';
import 'package:comatecs/features/favourite/domain/use_cases/fetch_favourite_items_use_case/fetch_favourite_items_use_case.dart';
import 'package:comatecs/features/favourite/domain/use_cases/remove_from_favourite_use_case/remove_form_favourite_use_case.dart';
import 'package:comatecs/features/favourite/presentaion/cubits/add_to_favourite_cubit/add_and_remove_favourite_cubit.dart';
import 'package:comatecs/features/favourite/presentaion/cubits/fetch_favourite_items_cubit/fetch_favourite_items_cubit.dart';
import 'package:comatecs/features/home/domain/repositories/home_repository.dart';
import 'package:comatecs/features/home/domain/use_cases/fetch_categories_use_case.dart';
import 'package:comatecs/features/home/domain/use_cases/fetch_filtered_items_use_case.dart';
import 'package:comatecs/features/home/domain/use_cases/fetch_items_use_case.dart';
import 'package:comatecs/features/home/domain/use_cases/search_products_use_case.dart';
import 'package:comatecs/features/home/presentaion/cubits/cubit/counter_cubit.dart';
import 'package:comatecs/features/home/presentaion/cubits/fetch_categories_cubit/fetch_categories_cubit.dart';
import 'package:comatecs/features/home/presentaion/cubits/fetch_filtered_items_cubit/fetch_filtered_items_cubit.dart';
import 'package:comatecs/features/home/presentaion/cubits/fetch_items_cubit/fetch_items_cubit.dart';
import 'package:comatecs/features/home/presentaion/cubits/search_items/search_items_cubit.dart';
import 'package:comatecs/features/my_orders/domain/repositories/orders_repository.dart';
import 'package:comatecs/features/my_orders/domain/use_cases/fetch_orders_use_case.dart';
import 'package:comatecs/features/my_orders/presentation/cubit/fetch_orders/fetch_orders_cubit.dart';
import 'package:comatecs/features/internet_connection/presentation/view/internet_bloc/internet_bloc.dart';
import 'package:comatecs/features/internet_connection/presentation/view/not_connected_to_internet_view.dart';
import 'package:comatecs/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // Hive.registerAdapter(ItemEntityAdapter());
  // await Hive.openBox<ItemEntity>(kItemEntityBox);

  await SharedPrefrencesSingleton.init();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ),
  );
  Bloc.observer = SimpleBlocObserver();
  setupGetIt();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FetchCategoriesCubit>(
          create: (context) => FetchCategoriesCubit(
            FetchCategoriesUseCase(
              getIt<HomeRepository>(),
            ),
          )..fetchCategories(),
        ),
        BlocProvider(
          create: (context) => SearchItemsCubit(
            SearchProductsUseCase(
              homeRepository: getIt<HomeRepository>(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => FetchFilteredItemsCubit(
            FetchFilteredItemsUseCase(
              getIt<HomeRepository>(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => AddAndRemoveFavouriteCubit(
            addToFavouriteUseCase: AddToFavouriteUseCase(
                favouriteRepository: getIt<FavouriteRepository>()),
            removeFormFavouriteUseCase: RemoveFromFavouriteUseCase(
              favouriteRepository: getIt<FavouriteRepository>(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => AddAndRemoveFromCartCubit(
            addToCartUseCase:
                AddToCartUseCase(cartRepository: getIt<CartRepository>()),
            removeFromCartUseCase: RemoveFromCartUseCase(
              cartRepository: getIt<CartRepository>(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => UpdateQuantityCubit(
            UpdateCartQuantityUseCase(
              cartRepository: getIt<CartRepository>(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => FetchUserProfileCubit(
            FetchUserProfileUseCase(
              accountRepository: AccountRepositoryImplementation(
                RemoteAccountDataSourceImplementaion(
                  apiService: getIt.get<ApiService>(),
                ),
              ),
            ),
          )..fetchUserProfile(),
        ),
        BlocProvider(
          create: (context) => FetchOrdersCubit(
            FetchOrdersUseCase(
              getIt<OrdersRepository>(),
            ),
          )..fetchOrders(),
        ),
        BlocProvider(
          create: (context) => FetchCartItemsCubit(
            FetchCartItemsUseCase(
              cartRepository: getIt<CartRepository>(),
            ),
          )..fetchCartItems(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => FetchFavouriteItemsCubit(
            FetchFavouriteItemsUseCase(
              favouriteRepository: getIt<FavouriteRepository>(),
            ),
          )..fetchFavouriteItems(),
          lazy: false,
        ),
        BlocProvider<FetchItemsCubit>(
          create: (context) => FetchItemsCubit(FetchItemsUseCase(
            getIt<HomeRepository>(),
          ))
            ..fechItems(),
        ),
        BlocProvider<UpdateQuantityCubit>(
          create: (context) => UpdateQuantityCubit(
            UpdateCartQuantityUseCase(
              cartRepository: getIt<CartRepository>(),
            ),
          ),
        ),
        BlocProvider(
              create: (context) => CounterCubit(),
        ),
        BlocProvider(
          create: (context) => InternetBloc(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return BlocBuilder<InternetBloc, InternetState>(
            builder: (context, state) {
              return MaterialApp.router(
                // useInheritedMediaQuery: true,
                // builder: DevicePreview.appBuilder,
                locale: const Locale('ar', 'EG'),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],

                supportedLocales: S.delegate.supportedLocales,
                routerConfig: state is NotConnectedState
                    ? NotConnectedToInternetView.notConnectedToInternetRouter
                    : AppRoutes.routes,
                debugShowCheckedModeBanner: false,
                title: 'Comatecs',
                theme: arabicTheme,
              );
            },
          );
        },
      ),
    );
  }
}
