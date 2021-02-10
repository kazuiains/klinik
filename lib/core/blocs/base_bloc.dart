import 'package:flutter/cupertino.dart';
import 'package:rxdart/subjects.dart';

class BaseBloc extends ChangeNotifier {
  final _isLoadingSubject = BehaviorSubject<bool>.seeded(false);
  Stream<bool> get isLoading => _isLoadingSubject.stream;

  void setBusy() {
    _isLoadingSubject.add(true);
  }

  void setIdle() {
    _isLoadingSubject.add(false);
  }

  void dispose() {
    _isLoadingSubject.close();
  }
}
