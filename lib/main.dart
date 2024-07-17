import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/home.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://ptjonufuuuxkcngefhil.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB0am9udWZ1dXV4a2NuZ2VmaGlsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk2MjYwNTEsImV4cCI6MjAzNTIwMjA1MX0.FVluai4CCMXV4D0rnY2ViE8lxwZKuj6Yz7n0dm9HLmw',
  );
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: Home()
      )
  );
}


