// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drop_down_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DropDownData _$DropDownDataFromJson(Map<String, dynamic> json) => DropDownData(
      type: json['type'] as String?,
      label: json['label'] as String?,
      placeHolder: json['placeHolder'] as String?,
      required: json['required'] as bool?,
      dropdownOptions: (json['dropdownOptions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DropDownDataToJson(DropDownData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'label': instance.label,
      'placeHolder': instance.placeHolder,
      'required': instance.required,
      'dropdownOptions': instance.dropdownOptions,
    };
