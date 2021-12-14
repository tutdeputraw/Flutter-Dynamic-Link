part of '../../pages/_view.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomePageController());

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('HOMEPAGE'),
            ElevatedButton(
              onPressed: controller.deeplinkOnClick,
              child: const Text('CLICK'),
            )
          ],
        ),
      ),
    );
  }
}
