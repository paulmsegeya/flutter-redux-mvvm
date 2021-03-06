import 'package:redux/redux.dart';
import 'package:flutter_redux_mvvm/store/models/GalleryData.dart';
import 'package:flutter_redux_mvvm/store/actions/index.dart';

final galleryReducer = combineReducers<GalleryData>([
  TypedReducer<GalleryData, GalleryImagesListAction>(_getGalleryData),
]);

GalleryData _getGalleryData(state, GalleryImagesListAction action) {
  GalleryData stateData = new GalleryData();
  stateData.galleryImages = action.items;
  return stateData;
}
