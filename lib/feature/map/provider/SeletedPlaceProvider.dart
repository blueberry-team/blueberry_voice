import 'package:blueberry_flutter_template/model/GoogleMapPlaceModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedPlaceProvider =
    StateProvider.autoDispose<GoogleMapPlaceModel?>((ref) => null);
