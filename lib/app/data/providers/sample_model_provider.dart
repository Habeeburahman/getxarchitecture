import 'package:get/get.dart';

import '../models/sample_model_model.dart';

class SampleModelProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return SampleModel.fromJson(map);
      if (map is List)
        return map.map((item) => SampleModel.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<SampleModel?> getSampleModel(int id) async {
    final response = await get('samplemodel/$id');
    return response.body;
  }

  Future<Response<SampleModel>> postSampleModel(
          SampleModel samplemodel) async =>
      await post('samplemodel', samplemodel);
  Future<Response> deleteSampleModel(int id) async =>
      await delete('samplemodel/$id');
}
