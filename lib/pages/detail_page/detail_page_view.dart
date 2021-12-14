part of '../../pages/_view.dart';

class DetailPageView extends StatelessWidget {
  const DetailPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailPageController());

    return const Scaffold(
      body: Center(
        child: Text('DETAILPAGE'),
      ),
    );
  }
}
