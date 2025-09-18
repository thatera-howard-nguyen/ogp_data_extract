import 'package:ogp_data_extract/ogp_data_extract.dart';

void main() async {
  // Test with pub.dev URL
  const String url = 'https://pub.dev/';
  print('🔍 Extracting OGP data from: $url\n');

  final OgpData? ogpData = await OgpDataExtract.execute(url);

  if (ogpData != null) {
    print('✅ OGP Extraction Results:');
    print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    print('🌐 URL: ${ogpData.url}');
    print('📄 Type: ${ogpData.type}');
    print('📝 Title: ${ogpData.title}');
    print('📋 Description: ${ogpData.description}');
    print('🖼️  Image: ${ogpData.image}');
    print('🏢 Site Name: ${ogpData.siteName}');
    print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
  } else {
    print('❌ Unable to extract OGP data');
  }

  // Test with another URL
  print('\n🔍 Testing with another URL: https://github.com\n');
  try {
    const String url2 = 'https://link.noborder.app?inapp=/thread/10';
    final OgpData? ogpData2 = await OgpDataExtract.execute(url2);

    if (ogpData2 != null) {
      print('✅ OGP Extraction Results:');
      print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      print('🌐 URL: ${ogpData2.url}');
      print('📄 Type: ${ogpData2.type}');
      print('📝 Title: ${ogpData2.title}');
      print('📋 Description: ${ogpData2.description}');
      print('🖼️  Image: ${ogpData2.image}');
      print('🏢 Site Name: ${ogpData2.siteName}');
      print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    } else {
      print('❌ Unable to extract OGP data');
    }
  } catch (e) {
    print('❌ Unable to extract OGP data: $e');
  }
}
