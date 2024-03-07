import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  /*String titleInput;
    String amountInput;*/
  final titleInputController = TextEditingController();

  final amountInputController = TextEditingController();

  void submitData() {
    final enteredTitle = titleInputController.text;
    final enteredAmount = double.parse(amountInputController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    } // lehna golna ken enteredTitle feregh wala enteredAmount <=0 il ne vas pas executer le code apres
    // ma3neha l addTx mch bch yaamlelha execution
    widget.addTx(enteredTitle, enteredAmount);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              /*onChanged: (val) {
                      titleInput = val;
                    },*/
              controller: titleInputController,
              onSubmitted: (_) => submitData,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              /*onChanged: (val) {
                      amountInput = val;
                    },*/
              controller: amountInputController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData,
            ),
            ElevatedButton(
              child: Text(
                'Add Transaction',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onPressed: submitData,
            ),
          ],
        ),
      ),
    );
  }
}
