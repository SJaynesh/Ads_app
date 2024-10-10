import 'package:couter_ads_app/helper/ads_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    AdsHelper.adsHelper.loadBannerAds();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ads"),
      ),
      body: Center(
        child: AdWidget(
          ad: AdsHelper.adsHelper.bannerAd!,
        ),
      ),
    );
  }
}
