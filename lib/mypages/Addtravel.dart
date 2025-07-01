import 'package:flutter/material.dart';

class Addtravel extends StatefulWidget {
  const Addtravel({super.key});

  @override
  State<Addtravel> createState() => _AddtravelState();
}

class _AddtravelState extends State<Addtravel> {
  final _formKey = GlobalKey<FormState>();
  String _place = '';
  String _startDte = '';
  String _endDate = '';
  String _vehicle = '';
  double _budget = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // Light blue background
      appBar: AppBar(
        title: const Text('Add Travel'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'ADD TRAVEL',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                _buildInputField('Place'),
                _buildInputField('Start Date'),
                _buildInputField('End Date'),
                _buildInputField('Transportation'),
                _buildInputField('Budget', keyboardType: TextInputType.number),

                const SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        print('The form is Validated');
                      }
                      // Save or submit logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    ),
                    child: const Text('Save'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    floatingActionButton: FloatingActionButton(
    onPressed: (){
    Navigator.pushNamed(context, '/add');
    },
    child: Icon(Icons.add),
    )
    );
  }


  Widget _buildInputField(String label, {TextInputType keyboardType = TextInputType.text, int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        keyboardType: keyboardType,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.blueAccent),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.lightBlueAccent),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        validator: (value){
          if(value == null || value.isEmpty){
            return 'Please add';
          }
          return null;
        },
      ),
    );
  }
}
