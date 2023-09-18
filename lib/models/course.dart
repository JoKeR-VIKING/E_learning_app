class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course> generateCourses() {
    return [
      Course('Luma Lanari', 'assets/icons/avatar01.png', 'Plant', 'assets/images/course01.png'),
      Course('Daniel Dia', 'assets/icons/avatar02.png', 'Mushroom', 'assets/images/course02.png'),
      Course('Chuck Francis', 'assets/icons/avatar03.png', 'Linear Equations', 'assets/images/course03.png'),
    ];
  }
}