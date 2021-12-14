part of '../../pages/_controller.dart';

class DetailPageController extends GetxController {
  @override
  void onInit() async {
    await Firebase.initializeApp();
    await backgroundDynamicLink();
    await foregroundDynamicLink();
    super.onInit();
  }

  Future<void> backgroundDynamicLink() async {
    print('backgroundDynamicLink');

    FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
      onSuccess();
    }).onError((error) {
      print('onLink error' + error.message);
    });
  }

  Future<void> foregroundDynamicLink() async {
    print('foregroundDynamicLink');

    final PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    final Uri? deepLink = data?.link;
    if (deepLink != null) {
      onSuccess();
    }
  }

  void onSuccess() {
    print('GETLINK');
  }
}
