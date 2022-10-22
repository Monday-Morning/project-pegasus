
String limitString(String author){
  if(author == "Team MM") return author;
  List<String> authorName = author.split(' ');


  String finalName = authorName.sublist(0,((authorName.length/2).round())).reduce((value, element) => '$value $element');
  return finalName;
}