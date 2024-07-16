class QuotesModel {
  String? quote;
  String? author;
  List<QuotesModel> QuotesList = [];

  QuotesModel({this.author, this.quote});

  factory QuotesModel.fromQuoteModel(Map m1) {
    return QuotesModel(author: m1['author'], quote: m1['quote']);
  }

  QuotesModel.toList({required List l1}) {
    for (int i = 0; i < l1.length; i++) {
      QuotesList.add(QuotesModel.fromQuoteModel(l1[i]));
    }
  }
}
