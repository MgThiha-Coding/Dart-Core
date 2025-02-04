import 'dart:async';

StreamController<int> streamController = StreamController<int>();
StreamSink<int> streamSink = streamController.sink;

void main() {
  live(); // Start streaming events

  Stream<int> stream = streamController.stream.asBroadcastStream().transform(
        StreamTransformer<int, int>.fromHandlers(
          handleData: (data, sink) {
            if (data == 5) {
              sink.close();
            } else {
              sink.add(data);
            }
          },
          handleError: (error, stackTrace, sink) {
            print("Error encountered: $error");
            sink.close(); // Close stream on error
          },
        ),
      );

  stream.listen((event) => print('Viewer 1 received: $event'));
  stream.listen((event) => print('Viewer 2 received: $event'));
  stream.listen((event) => print('Viewer 3 received: $event'));
  stream.listen((event) => print('Viewer 4 received: $event'));
}

void live() {
  for (int i = 1; i <= 6; i++) {
    streamSink.add(i);
  }
}
