// file created on 20/08/2018
// by Rahul Harmalkar
import 'dart:io';
import 'dart:convert';
import 'dart:async';

main(){
  Stopwatch stopwatch = new Stopwatch()..start();
  // code to create and write to the file
  String path = "./CreatedTestFile.txt";
  var myFile = new File(path);
  var fileStream = myFile.openWrite();

  fileStream.write("Hi, this is the content generated from the code2");

  fileStream.close();

  // code to read from the file that has been created using stream
  Stream<List<int>> fileStreamRead = myFile.openRead();

  fileStreamRead.transform(utf8.decoder)
  .transform(new LineSplitter())
  .listen((data){
    print('using stream: $data');
  },
  onDone: (){},
  onError: (err){
    print(err.toString());
    }
  );
  
  // code to read from the file that has been created without using stream
  myFile.readAsString().then((String contexts){
    print('without using stream: $contexts');
  });

  myFile.exists().then((isPresent){
    // prints boolean
    print(isPresent);
  });

  print('main() executed in ${stopwatch.elapsed}');
}

// Stopwatch stopwatch = new Stopwatch()..start();
// doSomething();
// print('doSomething() executed in ${stopwatch.elapsed}');