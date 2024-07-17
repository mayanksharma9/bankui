import 'package:bankui/Utils/duecards.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DueCardList extends StatefulWidget {
  const DueCardList({super.key});

  @override
  _DueCardListState createState() => _DueCardListState();
}

class _DueCardListState extends State<DueCardList> {
 bool isLoading = true;
 List<dynamic> invoices = [];
final fetchDueCards =  Supabase.instance.client.from('INVOICE_INFO').select();



  @override
  Widget build(BuildContext context) {
        return FutureBuilder<List<DueCard>>(
          future: fetchCards(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return ListView(children: snapshot.data!);
            }
          },
        );
  }

    Future<List<DueCard>> fetchCards() async {
    final response = await Supabase.instance.client.from('INVOICE_INFO').select();

    return (response.toList()).map((data) {
      return DueCard(
        merchantName: data['merchant_name'],
        cardNumber: data['invoice_id'],
        dueDate: data['due_date'],
        amount: data['invoice_amount'].toString(),
        onPay: () => print('Pay button pressed for ${data['merchantName']}'),
      );
    }).toList();
  }
}
