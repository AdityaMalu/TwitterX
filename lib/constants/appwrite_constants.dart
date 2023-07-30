class AppWriteConstants {
  static const String databaseID = "6486fb6b27d092d32459";
  static const String projectID = "6486f524a1e14bde8f87";
  static const String endPoint = "http://192.168.243.241/v1";
  // static const String endPoint1 = "http://localhost:80/v1";

  static const String userCollection = "64882f1f6ad30f9dbf5c";
  static const String tweetsCollection = "648879ae847625c3b475";

  static const String imagesBucket = "6488b005c8c955053ea6";

  static String imageUrl(String imageId) =>
      '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectID&mode=admin';
}
