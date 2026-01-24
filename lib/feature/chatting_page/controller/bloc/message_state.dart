part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState.initial() = _Initial;
  const factory MessageState.messageSucess(List<MessageModel> messageModel) = MessageSucess;
  const factory MessageState.messageFailure(String message) = MessageFailure;
  const factory MessageState.messageLoading() = MessageLoading;
}
