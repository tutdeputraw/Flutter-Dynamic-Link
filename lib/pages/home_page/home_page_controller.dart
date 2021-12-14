part of '../../pages/_controller.dart';

class HomePageController extends GetxController {
  void deeplinkOnClick() async {
    const url = 'https://fluturl.page.link/test';
    await launch(url);
  }
}
