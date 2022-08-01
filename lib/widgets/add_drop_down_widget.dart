import 'package:flutter/material.dart';

class AddDropDownWidget extends StatefulWidget {
  const AddDropDownWidget({Key? key}) : super(key: key);

  @override
  State<AddDropDownWidget> createState() => _AddDropDownWidgetState();
}

class _AddDropDownWidgetState extends State<AddDropDownWidget> {
  final TextEditingController templateNameController = TextEditingController();

  final List<TextEditingController> dropDownControllers = [];
  final List<TextFormField> dropDownfields = [];
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const Text(
              'Drop Down',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: templateNameController,
              decoration: InputDecoration(
                labelText: 'Field Label',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)),
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Dropdown options',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_rounded),
                  onPressed: () {
                    final controller = TextEditingController();
                    final field = TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    );
                    setState(() {
                      dropDownControllers.add(controller);
                      dropDownfields.add(field);
                    });
                  },
                ),
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: dropDownfields.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: dropDownfields[index],
                  trailing: IconButton(
                    icon: const Icon(Icons.close_rounded),
                    onPressed: () {
                      setState(() {
                        dropDownControllers.removeAt(index);
                        dropDownfields.removeAt(index);
                      });
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 10.0),
            ),
          ],
        ),
      ),
    );
  }
}
