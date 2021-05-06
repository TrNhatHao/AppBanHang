class Categories {
  int id;
  String title;
  String image;

  Categories({this.id, this.title, this.image});

  static List<Categories> init() {
    List<Categories> data = [
      Categories(id: 1, title: "HighLand", image: "assets/images/ic_highland.jpg"),
      Categories(id: 2, title: "Circle K", image: "assets/images/ic_circleK.png"),
      Categories(id: 3, title: "MiniStop", image: "assets/images/ic_ministop.jpg"),
      Categories(id: 4, title: "Seven Eleven", image: "assets/images/ic_seven_eleven.png"),
      Categories(id: 5, title: "VinMart", image: "assets/images/ic_vinmart.png"),
    ];
    return data;
  }
}
