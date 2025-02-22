import 'package:flutter/material.dart';

abstract class BasePresenter<T> {
  // Presenter constructor, used in Router
  Widget? create(covariant T params) {
    return null;
  }
}
