import 'package:ws_controller_of_rtc/src/models/message_enum.dart';
import 'package:web_socket_client/web_socket_client.dart';

/// A Dart package which manages the counter domain.
class CounterRepository {
  CounterRepository({required String url}) : _ws = WebSocket(Uri.parse(url));

  final WebSocket _ws;

  /// Send an increment message to the server.
  void increment() {
    _ws.send(MessageEnum.increment.value);
  }

  /// Send a decrement message to the server.
  void decrement() => _ws.send(MessageEnum.decrement.value);

  void send(dynamic message) => _ws.send(message);

  /// Return a stream of real-time count updates from the server.
  Stream<String> get count => _ws.messages.cast<String>().map((v) => v);

  /// Return a stream of connection updates from the server.
  Stream<ConnectionState> get connection => _ws.connection;

  /// Close the connection.
  void close() => _ws.close();
}
