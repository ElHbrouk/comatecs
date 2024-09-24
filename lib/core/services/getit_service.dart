
import 'package:comatecs/core/utils/api_service.dart';
import 'package:comatecs/features/auth/data/data_sources/remote_auth_data_source.dart';
import 'package:comatecs/features/auth/data/repositories/auth_repository_implementaion.dart';
import 'package:comatecs/features/auth/domain/repositories/auth_repository.dart';
import 'package:comatecs/features/auth/domain/use_cases/create_account_with_email_and_password_use_case.dart';
import 'package:comatecs/features/cart/data/data_sources/cart_remote_data_source.dart';
import 'package:comatecs/features/cart/data/repositories/cart_repository_implementation.dart';
import 'package:comatecs/features/cart/domain/repositories/cart_repository.dart';
import 'package:comatecs/features/favourite/data/data_sources/remote_favourite_data_source.dart';
import 'package:comatecs/features/favourite/data/repositories/favourite_repository_implementation.dart';
import 'package:comatecs/features/favourite/domain/repositories/favourite_repository.dart';
import 'package:comatecs/features/home/data/repositories/home_repository_implementaion.dart';
import 'package:comatecs/features/home/domain/repositories/home_repository.dart';
import 'package:comatecs/features/my_orders/data/data_sources/orders_remote_data_source.dart';
import 'package:comatecs/features/my_orders/data/repositories/orders_repository_implementaion.dart';
import 'package:comatecs/features/my_orders/domain/repositories/orders_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/data_sources/remote_data_source.dart';

final getIt = GetIt.instance;
setupGetIt() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      dio: Dio(),
    ),
  );
  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImplementaion(
      remoteAuthDataSourceImplementaion: RemoteAuthDataSourceImplementaion(
        apiService: getIt.get<ApiService>(),
      ),
    ),
  );
  getIt.registerSingleton<CreateAccountWithEmailAndPasswordUseCase>(
    CreateAccountWithEmailAndPasswordUseCase(
      authRepository: getIt.get<AuthRepository>(),
    ),
  );
  getIt.registerSingleton<HomeRepository>(
    HomeRepositoryImplementaion(
      homeRemoteDataSourceImpl: HomeRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
  getIt.registerSingleton<FavouriteRepository>(
    FavouriteRepositoryImplementation(
      remoteFavouriteDataSource: RemoteFavouriteDataSourceImplmentation(
        getIt.get<ApiService>(),
      ),
    ),
  );
  getIt.registerSingleton<CartRepository>(
    CartRepositoryImplementation(
      cartRemoteDataSource: CartRemoteDataSourceImplementation(
        getIt.get<ApiService>(),
      ),
    ),
  );
  getIt.registerSingleton<OrdersRepository>(
    OrdersRepositoryImplementaion(
      OrdersRemoteDataSourceImplementation(
        getIt<ApiService>(),
      ),
    ),
  );

}
