import 'package:flutter/material.dart';
import 'package:templateapp/pages/create_templates_page.dart';

class TemplateListPage extends StatefulWidget {
  const TemplateListPage({Key? key}) : super(key: key);

  @override
  State<TemplateListPage> createState() => _TemplateListPageState();
}

class _TemplateListPageState extends State<TemplateListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Template List'),
      ),
      body: SafeArea(
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 8,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          itemBuilder: (context, index) {
            return const Card(
              elevation: 2.0,
              child: ListTile(
                title: Text('Template 1'),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CreateTemplatesPage()),
            );
          }),
          tooltip: 'Add Template',
          child: const Icon(Icons.add_rounded)),
    );
  }
}
