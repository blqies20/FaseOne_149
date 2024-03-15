import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({
    super.key,
    required this.formKey,
    required this.etName,
    required this.etNumber,
    required this.etAddress,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController etName;
  final TextEditingController etNumber;
  final TextEditingController etAddress;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

enum gender { male, female }

class _FormWidgetState extends State<FormWidget> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              controller: widget.etName,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  labelText: "Nama",
                  hintText: "Masukkan Nama",
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: widget.etNumber,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  labelText: "No Telepon",
                  hintText: "Masukkan Nomor Telepon",
                  prefixIcon: Icon(Icons.phone)),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Masukkan Nomer dengan Benar";
                } else if (value.length < 12) {
                  return "Masukkan minimal 12 angka";
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: widget.etAddress,
              decoration: InputDecoration(
                  labelText: "Alamat",
                  hintText: "Masukkan Alamat",
                  prefixIcon: Icon(Icons.home)),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Jenis Kelamin",
                  style: TextStyle(fontSize: 15),
                ),
                RadioListTile(
                  title: Text("Male"),
                  value: "male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Female"),
                  value: "female",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ],
            )
          ],
        ));
  }
}
