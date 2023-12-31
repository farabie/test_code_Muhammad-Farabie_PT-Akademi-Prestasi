part of 'providers.dart';

class SpaceProvider extends ChangeNotifier {
  getRecomendedSpaces() async {
    var result = await http
        .get(Uri.parse("https://bwa-cozy-api.vercel.app/recommended-spaces"));
    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      return <Space>[];
    }
  }
}
