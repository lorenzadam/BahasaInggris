class Category {
  Category({
    this.title = '',
    this.imagePath = '',
  });

  String title;
  String kelas;
  String imagePath;

  static List<Category> popularCourseList = <Category>[
    Category(imagePath: 'assets/design_course/interFace3.png', title: 'Huruf'),
    Category(imagePath: 'assets/design_course/interFace4.png', title: 'Kata'),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Angka',
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Warna',
    ),
  ];
}
