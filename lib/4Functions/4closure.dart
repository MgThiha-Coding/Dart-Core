void main() {
  //  closure

  show() {
    int id = 10;
    int show() => id;
    return id; // return id from inner method to outside
  }

  var showvalue = show;
  var res = showvalue;
  print(res());
}
