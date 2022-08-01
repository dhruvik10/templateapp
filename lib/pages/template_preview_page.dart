// import 'package:flutter/material.dart';
// import 'package:templateapp/pages/create_templates_page.dart';

// class TemplatePreviewPage extends StatefulWidget {
//   const TemplatePreviewPage({Key? key, required this.templates})
//       : super(key: key);
//   final List<Template> templates;

//   @override
//   State<TemplatePreviewPage> createState() => _TemplatePreviewPageState();
// }

// class _TemplatePreviewPageState extends State<TemplatePreviewPage> {
//   final TextEditingController _textFieldController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Template Preview'),
//       ),
//       body: SafeArea(
//           child: ListView.separated(
//         itemCount: widget.templates.length,
//         itemBuilder: ((context, index) {
//           final template = widget.templates[index];
//           if (template.isTextField) {
//             return TextFormField(
//               controller: _textFieldController,
//               decoration: InputDecoration(

//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15.0)),
//               ),
//             );
//           }
//         }),
//         separatorBuilder: ((context, index) {
//           return const SizedBox(height: 10);
//         }),
//       )),
//     );
//   }
// }
