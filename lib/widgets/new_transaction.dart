import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  
        /*String titleInput;
    String amountInput;*/
    final titleInputController =TextEditingController();
    final amountInputController =TextEditingController();
    final Function addTx;

    NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {

    return    Card(
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
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    /*onChanged: (val) {
                      amountInput = val;
                    },*/
                    controller: amountInputController,
                  ),
                  ElevatedButton(
                    child: Text(
                      'Add Transaction',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: () {
                      addTx(titleInputController.text,double.parse(amountInputController.text));
                    },
                  ),
                ],
              ),
            ),
          );
  }
}