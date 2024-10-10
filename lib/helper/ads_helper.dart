import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsHelper {
  AdsHelper._();

  static AdsHelper adsHelper = AdsHelper._();

  // Todo : Banner Ads
  BannerAd? bannerAd;

  void loadBannerAds() async {
    bannerAd = BannerAd(
      size: AdSize.largeBanner,
      adUnitId: "ca-app-pub-3940256099942544/6300978111",
      listener: const BannerAdListener(),
      request: const AdRequest(),
    );

    await bannerAd?.load();
  }
}
