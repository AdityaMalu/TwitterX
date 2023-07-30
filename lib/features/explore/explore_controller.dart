import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/apis/user_api.dart';

import '../../models/user_model.dart';

final exploreControllerProvider = StateNotifierProvider((ref) {
  return ExploreController(userApi: ref.watch(userAPIProvider));
});

final searchUserProvider = FutureProvider.family((ref, String name) async {
  final exploreController = ref.watch(exploreControllerProvider.notifier);
  return exploreController.searchUser(name);
});

class ExploreController extends StateNotifier<bool> {
  final UserAPI _userApi;
  ExploreController({
    required UserAPI userApi,
  })  : _userApi = userApi,
        super(false);

  Future<List<UserModel>> searchUser(String name) async {
    final users = await _userApi.SearchUserbyName(name);
    return users.map((e) => UserModel.fromMap(e.data)).toList();
  }
}
