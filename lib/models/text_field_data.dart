import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'text_field_data.g.dart';

@JsonSerializable()
class TextFieldData extends Equatable {
  final String? type;
  final String? label;
  final String? placeHolder;
  final bool? required;

  const TextFieldData({
    this.type,
    this.label,
    this.placeHolder,
    this.required,
  });

  factory TextFieldData.fromJson(Map<String, dynamic> json) {
    return _$TextFieldDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TextFieldDataToJson(this);

  TextFieldData copyWith({
    String? type,
    String? label,
    String? placeHolder,
    bool? required,
  }) {
    return TextFieldData(
      type: type ?? this.type,
      label: label ?? this.label,
      placeHolder: placeHolder ?? this.placeHolder,
      required: required ?? this.required,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [type, label, placeHolder, required];
}
