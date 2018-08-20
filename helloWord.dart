// created on 20/08/2018
// by Rahul Harmalkar
void main() {
  var appendMsg = StringBuffer("Hello world");
  for (int i = 0; i < 5; i++){
    appendMsg.write("!");
  }  
  print(appendMsg);
}
