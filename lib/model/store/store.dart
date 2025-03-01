import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class Store with _$Store {

  const factory Store({
    required String name,
    required String vicinity,
    required Map<String, dynamic> geometry

  }) = _Store;

  const Store._();

  factory Store.empty() {
    return Store(
      name: '',
      vicinity: '',
      geometry: {}
    );
  }

  factory Store.fromJson(Map<String, Object?> json) =>
      _$StoreFromJson(json);
}