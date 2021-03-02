class Category {
  Category({
    this.title = '',
    this.imagePath = '',
  });

  String title;
  String kelas;
  String imagePath;

  static List<Category> popularCourseList = <Category>[
    Category(
        imagePath: 'assets/design_course/interFace3.png',
        title: 'Huruf dan Kata'),
    Category(
        imagePath: 'assets/design_course/interFace4.png',
        title: 'Angka dan Warna'),
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Bentuk 2 Dimensi',
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Benda Di Sekeliling',
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Kosakata Sehari-hari',
    ),
  ];
}
