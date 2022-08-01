import 'package:flutter/material.dart';
import 'package:templateapp/widgets/add_drop_down_widget.dart';
import 'package:templateapp/widgets/add_text_field_widget.dart';

class CreateTemplatesPage extends StatefulWidget {
  const CreateTemplatesPage({Key? key}) : super(key: key);

  @override
  State<CreateTemplatesPage> createState() => _CreateTemplatesPageState();
}

class _CreateTemplatesPageState extends State<CreateTemplatesPage> {
  final TextEditingController _templateNameController = TextEditingController();
  // final List<Widget> _toolBoxFields = [];
  final List<Template> _template = [];

  void openToolBox() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Text(
                'ToolBox',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40.0),
              Card(
                elevation: 2.0,
                child: ListTile(
                  title: const Text('Add TextField'),
                  onTap: () {
                    setState(() {
                      _template.add(Template(const AddTextFieldWidget(), true));
                      // _toolBoxFields.add(const AddTextFieldWidget());
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(height: 10.0),
              Card(
                elevation: 2.0,
                child: ListTile(
                  title: const Text('Add Drop Down'),
                  onTap: () {
                    setState(() {
                      _template.add(Template(const AddDropDownWidget(), false));
                      // _toolBoxFields.add(const AddDropDownWidget());
                    });
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create Template'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(Icons.add_rounded),
              onPressed: openToolBox,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          children: [
            TextFormField(
              controller: _templateNameController,
              decoration: InputDecoration(
                labelText: 'Template Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)),
              ),
            ),
            const SizedBox(height: 30.0),
            ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _template.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: _template[index].toolBoxField,
                  trailing: IconButton(
                    icon: const Icon(Icons.close_rounded),
                    onPressed: () {
                      setState(() {
                        _template.removeAt(index);
                      });
                    },
                  ),
                );
              }),
              separatorBuilder: ((context, index) =>
                  const SizedBox(height: 20.0)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13.0),
              ),
              child: const Text('Preview'),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13.0),
              ),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class Template {
  final Widget toolBoxField;
  final bool isTextField;

  Template(this.toolBoxField, this.isTextField);
}
