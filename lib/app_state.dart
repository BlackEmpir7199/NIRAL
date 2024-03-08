import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _onBoard = false;
  bool get onBoard => _onBoard;
  set onBoard(bool value) {
    _onBoard = value;
  }

  bool _grpcreated = false;
  bool get grpcreated => _grpcreated;
  set grpcreated(bool value) {
    _grpcreated = value;
  }

  dynamic _value;
  dynamic get value => _value;
  set value(dynamic value) {
    value = value;
  }

  List<MessageTypeStruct> _messages = [];
  List<MessageTypeStruct> get messages => _messages;
  set messages(List<MessageTypeStruct> value) {
    _messages = value;
  }

  void addToMessages(MessageTypeStruct value) {
    _messages.add(value);
  }

  void removeFromMessages(MessageTypeStruct value) {
    _messages.remove(value);
  }

  void removeAtIndexFromMessages(int index) {
    _messages.removeAt(index);
  }

  void updateMessagesAtIndex(
    int index,
    MessageTypeStruct Function(MessageTypeStruct) updateFn,
  ) {
    _messages[index] = updateFn(_messages[index]);
  }

  void insertAtIndexInMessages(int index, MessageTypeStruct value) {
    _messages.insert(index, value);
  }

  DateTime? _selecteddate;
  DateTime? get selecteddate => _selecteddate;
  set selecteddate(DateTime? value) {
    _selecteddate = value;
  }

  DocumentReference? _CreatedGrp;
  DocumentReference? get CreatedGrp => _CreatedGrp;
  set CreatedGrp(DocumentReference? value) {
    _CreatedGrp = value;
  }

  bool _isAdmin = false;
  bool get isAdmin => _isAdmin;
  set isAdmin(bool value) {
    _isAdmin = value;
  }

  bool _isLiked = false;
  bool get isLiked => _isLiked;
  set isLiked(bool value) {
    _isLiked = value;
  }

  bool _isMicOn = false;
  bool get isMicOn => _isMicOn;
  set isMicOn(bool value) {
    _isMicOn = value;
  }

  List<String> _Gratitude = [];
  List<String> get Gratitude => _Gratitude;
  set Gratitude(List<String> value) {
    _Gratitude = value;
  }

  void addToGratitude(String value) {
    _Gratitude.add(value);
  }

  void removeFromGratitude(String value) {
    _Gratitude.remove(value);
  }

  void removeAtIndexFromGratitude(int index) {
    _Gratitude.removeAt(index);
  }

  void updateGratitudeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _Gratitude[index] = updateFn(_Gratitude[index]);
  }

  void insertAtIndexInGratitude(int index, String value) {
    _Gratitude.insert(index, value);
  }

  String _currentday = '';
  String get currentday => _currentday;
  set currentday(String value) {
    _currentday = value;
  }

  String _ContactNum = '';
  String get ContactNum => _ContactNum;
  set ContactNum(String value) {
    _ContactNum = value;
  }

  final _userSupportGroupManager =
      StreamRequestManager<List<SupportGroupsRecord>>();
  Stream<List<SupportGroupsRecord>> userSupportGroup({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<SupportGroupsRecord>> Function() requestFn,
  }) =>
      _userSupportGroupManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserSupportGroupCache() => _userSupportGroupManager.clear();
  void clearUserSupportGroupCacheKey(String? uniqueKey) =>
      _userSupportGroupManager.clearRequest(uniqueKey);
}
