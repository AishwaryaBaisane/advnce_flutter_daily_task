import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utils/global/global.dart';
import '../../../utils/globalList/globalList.dart';
import '../model/quoteModel.dart';
import '../provider/provider.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    QuoteProvider QuoteProviderTrue =
        Provider.of<QuoteProvider>(context, listen: true);
    QuoteProvider QuoteProviderFalse =
        Provider.of<QuoteProvider>(context, listen: false);
    quotesModel = QuotesModel.toList(l1: quoteList);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Quotes',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: quotesModel.QuotesList.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(quotesModel.QuotesList[index].quote!),
            subtitle: Text(
              quotesModel.QuotesList[index].author!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: InkWell(
                onTap: () {
                  QuoteProviderFalse.removeData(index);
                },
                child: Icon(Icons.delete)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Form(
              key: formKey,
              child: AlertDialog(
                title: SizedBox(
                  height: 60,
                  width: 400,
                  child: TextField(
                    controller: txtAuthor,
                    decoration: InputDecoration(
                      hintText: 'Author',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                content: SizedBox(
                  height: 60,
                  width: 400,
                  child: TextField(
                    controller: txtQuote,
                    decoration: InputDecoration(
                      hintText: 'Quote',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      QuoteProviderFalse.addData();
                      QuoteProviderFalse.addQuoteList();
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.black87, fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.black87, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
