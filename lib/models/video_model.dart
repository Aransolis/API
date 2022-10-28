class VideoMovieModel {
  VideoMovieModel({
    this.key,
    this.site,
    this.type,
    this.official,
  });

  String? key;
  String? site;
  String? type;
  bool? official;

  factory VideoMovieModel.fromMap(Map<String, dynamic> map) {
    return VideoMovieModel(
      key: map['key'],
      site: map['site'],
      type: map['type'],
      official: map['official'],
    );
  }
}
