void logD(String value) {
  assert(() {
    print(value);
    return true;
  }());
}

void logE(String value) {
  logD("error: " + value);
}

void releaseLogD(String value) {
  print(value);
}

void releaseLogE(String value){
  releaseLogD("error: "+value);
}
