class User {
  final String firstName;
  final String name;
  final String avatar;
  final Story story;
  final String action;

  User({this.firstName, this.name, this.avatar, this.story, this.action});
}

class Story {
  final String background;

  Story(this.background);
}