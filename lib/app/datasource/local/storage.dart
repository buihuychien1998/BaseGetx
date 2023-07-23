import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '/app/core/constants/app_constant.dart';
import '/app/models/users_model.dart';

final box = GetStorage();

setUserInfo(UsersModel usersModel) {
  box.write(StorageConstants.userInfo, usersModel);
}

UsersModel? getUserInfo() {
  return box.read(StorageConstants.userInfo);
}

setToken(String value) {
  box.write(StorageConstants.token, value);
}

String getToken() {
  return box.read(StorageConstants.token) ?? '';
}

setLocaleLocal(String languageCode) {
  box.write(StorageConstants.localeLocal, languageCode);
}

Locale getLocaleLocal() {
  return Locale(box.read(StorageConstants.localeLocal) ?? 'en');
}
