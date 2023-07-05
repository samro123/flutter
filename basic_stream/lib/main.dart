
import 'dart:async';

void main() {
    var controllor = StreamController<String>();
    
    controllor.sink.add('Data 1');
    controllor.sink.add('Data 2');
    controllor.sink.add('Data 3');
    
    var stream = controllor.stream;
    
    var sub = stream.listen((event) { 
      print('receive data : $event ');
    });

    sub.onError((error){
      print('Error: $error');
    });

    sub.onDone(() {
      print('Stream closs');
    });

    controllor.sink.add('Data 4');
    controllor.sink.add('Data 5');

    controllor.sink.close();
}