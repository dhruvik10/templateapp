// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_field_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextFieldData _$TextFieldDataFromJson(Map<String, dynamic> json) =>
    TextFieldData(
      type: json['type'] as String?,
      label: json['label'] as String?,
      placeHolder: json['placeHolder'] as String?,
      required: json['required'] as bool?,
    );

Map<String, dynamic> _$TextFieldDataToJson(TextFieldData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'label': instance.label,
      'placeHolder': instance.placeHolder,
      'required': instance.required,
    };
