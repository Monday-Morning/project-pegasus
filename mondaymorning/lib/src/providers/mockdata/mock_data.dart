// ignore_for_file: public_member_api_docs

class Post {
  static final posts = [
    Post(
      'Chaos, Curiosity and COVID-19: A Biotechnologist’s Perspective',
      'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg',
      '10',
      'Asutosh, Kamala',
      1,
    ),
    Post(
      'Covid: India reports lowest daily new cases in 538 days',
      'https://image.freepik.com/free-vector/beautiful-gradient-spring-landscape_23-2148448598.jpg',
      '8',
      'Debabrata, Asutosh',
      2,
    ),
    Post(
      'Group Captain: Abhinandan Varthaman awarded Vir Chakra',
      'https://expertphotography.b-cdn.net/wp-content/uploads/2021/01/landscape-photography-10_reupload.jpeg',
      '6',
      'Asutosh, Sidhhant',
      3,
    ),
    Post(
      'Chaos, Curiosity and COVID-19: A Biotechnologist’s Perspective',
      'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg',
      '5',
      'Shomaya',
      4,
    ),
    Post(
      'Covid: India reports lowest daily new cases in 538 days',
      'https://image.freepik.com/free-vector/beautiful-gradient-spring-landscape_23-2148448598.jpg',
      '7',
      'Zaeden',
      5,
    ),
  ];
  final String title;
  final String description;
  final String time;
  final String author;
  final int id;
  Post(this.title, this.description, this.time, this.author, this.id);
}
