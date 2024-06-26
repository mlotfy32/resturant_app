class SlideObject {
  String title, subTitle, image;
  SlideObject(this.title, this.subTitle, this.image);
}

class Customer {
  int id;
  String name;
  int numperOfNotification;
  Customer(this.id, this.name, this.numperOfNotification);
}

class Contacts {
  int phone;
  String email;
  String link;
  Contacts(this.email, this.link, this.phone);
}

class Authontication {
  Customer? customer;
  Contacts?contacts;
  Authontication(this.contacts, this.customer);
}
