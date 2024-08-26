import 'package:blueberry_flutter_template/feature/voiceOutput/provider/CategoryIondexProvider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VoiceOutputCategoryListView extends ConsumerWidget {
  const VoiceOutputCategoryListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 카테고리 데이터를 리스트로 정의
    final categories = ['화내는 남편', '놀러온 남자', '데이트 준비중', '조직폭력배 남자'];

    return CarouselSlider(
      options: CarouselOptions(
        height: 250.0, // 슬라이더 높이
        enableInfiniteScroll: false, // 무한 스크롤 비활성화
        enlargeCenterPage: true, // 중앙의 아이템 확대
        viewportFraction: 0.4, // 각 아이템의 크기 비율
        onPageChanged: (index, reason) {
          ref.read(categoryIndexProvider.notifier).setIndex(index);
        },
      ),
      items: categories.map((category) {
        return Builder(
          builder: (BuildContext context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2, // 여유 공간의 2/3 사용
                  child: CircleAvatar(
                    radius: 80, // 원의 크기 조정
                    backgroundColor: Colors.blue, // 원의 배경색
                    child: Text(
                      category[0], // 카테고리 이름의 첫 글자
                      style: const TextStyle(
                        color: Colors.white, // 텍스트 색상
                        fontSize: 40, // 텍스트 크기
                        fontWeight: FontWeight.bold, // 텍스트 두께
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10), // 텍스트와 원 사이의 간격
                Expanded(
                  flex: 1, // 여유 공간의 1/3 사용
                  child: Text(
                    category, // 카테고리 이름 표시
                    textAlign: TextAlign.center, // 텍스트 가운데 정렬
                    softWrap: true, // 텍스트 자동 줄바꿈
                    overflow: TextOverflow.ellipsis, // 텍스트가 길면 생략 표시
                    maxLines: 2, // 최대 줄 수 설정
                    style: const TextStyle(fontSize: 14), // 텍스트 스타일 설정
                  ),
                ),
              ],
            );
          },
        );
      }).toList(),
    );
  }
}

