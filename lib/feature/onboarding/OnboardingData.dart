import 'package:blueberry_flutter_template/utils/AppStrings.dart';

import '../../gen/assets.gen.dart';

class OnboardingData {
  static const title = "title";
  static const description = "description";
  static const image = "image";

  static final List<Map<String, String>> pageDataList = [
    {
      title: AppStrings.onboardingTitle,
      description: AppStrings.onboardingDescription,
      image: Assets.images.safehouse
    },
    {
      title: AppStrings.onboardingTitle2,
      description: AppStrings.onboardingDescription2,
      image: Assets.images.phone
    },
    {
      title: AppStrings.onboardingTitle3,
      description: AppStrings.onboardingDescription3,
      image: Assets.images.smile
    },
  ];
}
