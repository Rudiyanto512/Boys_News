// // business.dart


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:berita/components/news1.dart'; // Pastikan mengimport komponen yang sesuai
// import '../providers/news.provider3.dart'; // Pastikan mengimport provider yang sesuai

// class Business extends StatefulWidget {
//   const Business({Key? key}) : super(key: key);

//   @override
//   _BusinessState createState() => _BusinessState();
// }

// class _BusinessState extends State<Business> {
//   @override
//   void initState() {
//     super.initState();
//     // Panggil metode getBusinessNews() pada provider
//     Provider.of<NewsProvider3>(context, listen: false).getBusinessNews();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Berita Bisnis'), // Sesuaikan judul dengan kategori berita yang bersangkutan
//       ),
//       body: Consumer<NewsProvider3>(
//         builder: (BuildContext context, newsProvider, Widget? child) {
//           return newsProvider.isLoading
//               ? Center(
//                   child: CircularProgressIndicator(),
//                 )
//               : ListView(
//                 physics: BouncingScrollPhysics(),
//                   children: [
//                     ...(newsProvider.resNews?.articles ?? []).map(
//                       (e) => News1(
//                         title: e.title ?? '',
//                         image: e.urlToImage ?? '',
//                       ),
//                     ),
//                   ],
//                 );
//         },
//       ),
//     );
//   }
// }
