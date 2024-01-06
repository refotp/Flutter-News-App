import 'package:get/get.dart';
import 'package:warta/data/repository.authentication/userrepository.dart';
import 'package:warta/model/usermodel.dart';

class ProfilePageController extends GetxController {
  static ProfilePageController get instance => Get.find();

  Rx<UserModel> user = UserModel.empty().obs;
  final userRepository = Get.put(UserRepository());

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchUserRecord();
  }

  Future<void> fetchUserRecord() async {
    try {
      final user = await userRepository.fetchUserDetails();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    }
  }
}
