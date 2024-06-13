class CategoriesModel {
  String? categoriesId;
  String? categoriesNameEnglish;
  String? categoriesNameArabic;
  String? categoriesImage;
  String? categoriesDatetime;

  CategoriesModel(
      {this.categoriesId,
      this.categoriesNameEnglish,
      this.categoriesNameArabic,
      this.categoriesImage,
      this.categoriesDatetime});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categories_id'];
    categoriesNameEnglish = json['categories_name_english'];
    categoriesNameArabic = json['categories_name_arabic'];
    categoriesImage = json['categories_image'];
    categoriesDatetime = json['categories_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categories_id'] = categoriesId;
    data['categories_name_english'] = categoriesNameEnglish;
    data['categories_name_arabic'] = categoriesNameArabic;
    data['categories_image'] = categoriesImage;
    data['categories_datetime'] = categoriesDatetime;
    return data;
  }
}
