class NotificationModel {
  String title, date, content;
  NotificationModel({
    required this.title,
    required this.date,
    required this.content,
  });
}

List<NotificationModel> notificationList = [
  NotificationModel(
    title: "Lorem ipsum dolor",
    date: "Today",
    content:
        "Your order has been cancelled by the\nvendor. Click here to know more.",
  ),
  NotificationModel(
      title: "Lorem ipsum dolor",
      date: "Today",
      content:
          'Your order has been cancelled by the\nvendor. Click here to know more.'),
  NotificationModel(
      title: "Lorem ipsum dolor",
      date: "Today",
      content:
          'Your order has been cancelled by the\nvendor. Click here to know more.'),
  NotificationModel(
      title: "Lorem ipsum dolor",
      date: "Today",
      content:
          'Your order has been cancelled by the\nvendor. Click here to know more.'),
  NotificationModel(
      title: "Lorem ipsum dolor",
      date: "Today",
      content:
          'Your order has been cancelled by the\nvendor. Click here to know more.'),
];
