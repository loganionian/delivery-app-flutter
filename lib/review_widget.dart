import 'package:flutter/material.dart';

class ReviewWidget extends StatefulWidget {
  final String orderId;

  ReviewWidget({required this.orderId});

  @override
  _ReviewWidgetState createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  double _rating = 0;
  String _review = '';

  void _submitReview() async {
    if (_rating > 0 && _review.isNotEmpty) {
      // Assuming submitReview is a method that handles API calls
      await submitReview(widget.orderId, _rating, _review);
      // Handle success or failure
    } else {
      // Show an error message
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Rating stars widget here
        TextField(
          onChanged: (text) {
            setState(() {
              _review = text;
            });
          },
          decoration: InputDecoration(hintText: 'Write your review'),
        ),
        ElevatedButton(
          onPressed: _submitReview,
          child: Text('Submit'),
        ),
      ],
    );
  }
}