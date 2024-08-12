import '../../gen/assets.gen.dart';

class OnboardingData {
  static const title = "title";
  static const description = "description";
  static const image = "image";

  static final List<Map<String, String>> pageDataList = [
    {
      title: "환영합니다!",
      description: "우리 앱으로 최고의 경험을 해보세요.",
      image: Assets.images.sample
    },
    {
      title: "연결 유지",
      description: "사랑하는 사람들과 항상 연결되세요.",
      image: Assets.images.sample
    },
    {title: "시작하기", description: "여정을 시작해봅시다!", image: Assets.images.sample},
  ];
}
