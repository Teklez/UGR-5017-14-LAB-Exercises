import 'dart:async';
import 'dart:convert';
import 'dart:io';

class Downloader {
  Future<void> downloadFile(String url, String savePath) async {
    try {
      final client = HttpClient();
      final request = await client.getUrl(Uri.parse(url));
      final response = await request.close();

      if (response.statusCode == 200) {
        final file = File(savePath);
        final sink = file.openWrite();
        final bytes = await response.contentBytes();

        int downloaded = 0;
        for (var byte in bytes) {
          await sink.add(byte);
          downloaded++;
          print('Downloading $url: ${(downloaded / bytes.length) * 100}%');
        }
        await sink.close();
        print('Download complete: $url');
      } else {
        print('Error downloading $url: Status code ${response.statusCode}');
      }
    } catch (e) {
      print('Error downloading $url: $e');
    } finally {
      client.close();
    }
  }


  Future<void> downloadFiles(List<String> urls, String saveDir) async {
    final futures = urls.map((url) => downloadFile(url, '$saveDir/${Uri.parse(url).pathSegments.last}'));
    await Future.wait(futures);
  }
}

void main() async {
  final urls = [
    "https://example.com/file1.txt",
    "https://example.com/file2.zip",
    "https://example.com/file3.pdf",
  ];
  final saveDir = "downloads";

  final downloader = Downloader();
  await downloader.downloadFiles(urls, saveDir);

  print("All downloads completed!");
}
