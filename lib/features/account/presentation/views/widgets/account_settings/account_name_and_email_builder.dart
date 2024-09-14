import 'package:comatecs/features/account/presentation/cubit/fetch_user_profile_cubit/fetch_user_profile_cubit.dart';
import 'package:comatecs/features/account/presentation/views/widgets/account_settings/account_name_and_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountNameAndEmailBuilder extends StatelessWidget {
  const AccountNameAndEmailBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchUserProfileCubit, FetchUserProfileState>(
      builder: (context, state) {
        if (state is FetchUserProfileSuccess) {
          return AccountNameAndEmail(
            userprofileEntity: state.userProfileEntity,
          );
        } else if (state is FetchUserProfileFailure) {
          return Center(
            child: Text(state.message),
          );
        } else if (state is FetchUserProfileLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return const Text('خطأ في تحميل البيانات');
        }
      },
    );
  }
}
