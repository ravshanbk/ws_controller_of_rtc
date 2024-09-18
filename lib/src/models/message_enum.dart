/// {@template message}
/// WebSocket counter messages.
/// {@endtemplate}
enum MessageEnum {
  /// An increment message.
  increment('__increment__'),

  /// A decrement message.
  decrement('__decrement__'),

  /// send sdp
  sendSdp('send_sdp'),

  /// reject call
  rejectCall('reject_call'),

  /// send ice candidate
  sendIceCandidate('send_ice_candidate'),

  /// receiver fmc toketn
  receiverFcmToke('receiver_fcm_token'),

  /// start_call
  startCall('start_call');

  /// {@macro message}
  const MessageEnum(this.value);

  /// The value of the message.
  final String value;
}
