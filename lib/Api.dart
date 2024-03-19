import 'package:http/http.dart' as http;

const CHAVE_YOUTUBE_API = "SUA_CHAVE_API";
const URL_BASE_DO_VIDEO = "https://www.googleapis.com/youtube/v3/";
const ID_DO_CANAL = "ID_DO_CANAL";

class Api {
  pesquisar(String pesquisar) async {
    http.Response response = await http.get(Uri.parse(URL_BASE_DO_VIDEO +
        "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$CHAVE_YOUTUBE_API"
            "&channelId=$ID_DO_CANAL"
            "&q=$pesquisar"));

    if (response.statusCode == 200) {
      print("Resultado:" + response.body);
    }
  }
}
