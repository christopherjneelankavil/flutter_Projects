import 'package:flutter/material.dart';

class WaterLimitPage extends StatelessWidget {
  final TextEditingController _limitController = TextEditingController();

  void _handleSaveButton(BuildContext context) {
    String limit = _limitController.text;
    if (limit.isNotEmpty) {
      _showNotification(context);
    }
  }

  void _showNotification(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('We will send you a notification when the limit is reached.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7FFFD4), Color(0xFF40E0D0)],
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _limitController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter water usage limit (in liters)',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide:const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _handleSaveButton(context),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              child:const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
