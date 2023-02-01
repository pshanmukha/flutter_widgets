import 'package:flutter/material.dart';

class MaterialBannerWidget extends StatefulWidget {
  const MaterialBannerWidget({Key? key}) : super(key: key);

  @override
  State<MaterialBannerWidget> createState() => _MaterialBannerWidgetState();
}

class _MaterialBannerWidgetState extends State<MaterialBannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('youtube.com')),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){_showMaterialBanner(context);},
                child: const Text('Show Material Banner'),
              ),
              const SizedBox(height: 4,),
              ElevatedButton(
                onPressed: (){_showMaterialBannerWithElevation(context);},
                child: const Text('Show Material Banner with Elevation'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showMaterialBanner(BuildContext context) {
    ScaffoldMessenger.of(context).showMaterialBanner(
         MaterialBanner(
            content: const Text("Hello there!"),
            leading: const Icon(Icons.notifications_active_outlined),
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.white12,
            actions: [
              TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearMaterialBanners();
                  },
                  child: const Text("Dismiss"),),
            ],));
  }

  void _showMaterialBannerWithElevation(BuildContext context) {
    ScaffoldMessenger.of(context).showMaterialBanner(
        MaterialBanner(
          content: const Text("Hello there!"),
          leading: const Icon(Icons.notifications_active_outlined),
          elevation: 5,
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.white12,
          actions: [
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).clearMaterialBanners();
              },
              child: const Text("Dismiss"),),
          ],));
  }
}
