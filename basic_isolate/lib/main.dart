import 'dart:isolate';

void main() async {
  ReceivePort receivePort = ReceivePort();
  Isolate isolate = await Isolate.spawn(runIsolate, receivePort.sendPort);
  receivePort.listen((message) {
    print('Received message in main: $message');
  });
  isolate.kill(priority: Isolate.immediate);
}

void runIsolate(SendPort sendPort) {
  sendPort.send('Hello from isolate!');
}