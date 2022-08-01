import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'drop_down_data.g.dart';

@JsonSerializable()
class DropDownData extends Equatable {
  final String? type;
  final String? label;
  final String? placeHolder;
  final bool? required;
  final List<String>? dropdownOptions;

  const DropDownData({
    this.type,
    this.label,
    this.placeHolder,
    this.required,
    this.dropdownOptions,
  });

  factory DropDownData.fromJson(Map<String, dynamic> json) {
    return _$DropDownDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DropDownDataToJson(this);

  DropDownData copyWith({
    String? type,
    String? label,
    String? placeHolder,
    bool? required,
    List<String>? dropdownOptions,
  }) {
    return DropDownData(
      type: type ?? this.type,
      label: label ?? this.label,
      placeHolder: placeHolder ?? this.placeHolder,
      required: required ?? this.required,
      dropdownOptions: dropdownOptions ?? this.dropdownOptions,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      type,
      label,
      placeHolder,
      required,
      dropdownOptions,
    ];
  }
}
