import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        child: transactions.isEmpty
            ? LayoutBuilder(builder: (ctx, contraints) {
                return Column(children: <Widget>[
                  Text(
                    'No Transactions',
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: contraints.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ]);
              })
            : ListView.builder(
                itemBuilder: (ctx, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    elevation: 5,
                    child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          radius: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: FittedBox(
                                child: Text(
                              '\$${transactions[index].amount}',
                            )),
                          ),
                        ),
                        title: Text(
                          transactions[index].title,
                          style: Theme.of(context).textTheme.title,
                        ),
                        subtitle: Text(
                          DateFormat.yMMMd().format(transactions[index].date),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          color: Theme.of(context).errorColor,
                          onPressed: () => deleteTx(transactions[index].id),
                        )),
                  );
                },
                itemCount: transactions.length,
              ));
  }
}
