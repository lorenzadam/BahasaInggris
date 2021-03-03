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
      title: 'Kosa Kata',
    ),
  ];
}
