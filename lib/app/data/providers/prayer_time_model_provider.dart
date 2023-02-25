import 'package:get/get.dart';

import '../models/prayer_time_model_model.dart';

class PrayerTimeModelProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return PrayerTimeModel.fromJson(map);
      if (map is List)
        return map.map((item) => PrayerTimeModel.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<PrayerTimeModel?> getPrayerTimeModel(int id) async {
    final response = await get('prayertimemodel/$id');
    return response.body;
  }

  Future<Response<PrayerTimeModel>> postPrayerTimeModel(
          PrayerTimeModel prayertimemodel) async =>
      await post('prayertimemodel', prayertimemodel);
  Future<Response> deletePrayerTimeModel(int id) async =>
      await delete('prayertimemodel/$id');
}
