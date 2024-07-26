import 'package:flutter/material.dart';
import 'package:islami/Screens/suraDetails.dart';
import 'package:islami/models/suramodel.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});
  final List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/qur2an_screen_logo.png',
          height: 227,
          // width: 205,
        ),
        Divider(),
        Text(
          'Sura Name',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Divider(),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Row(
                children: [
                  Expanded(child: Icon(Icons.star)),
                  Expanded(
                    flex: 3,
                    child: Divider(),
                  ),
                  Expanded(child: Icon(Icons.star)),
                ],
              );
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SuraDetails.routeName,
                      arguments: SuraModel(suraNames[index], index));
                },
                child: Text(
                  suraNames[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            },
            itemCount: suraNames.length,
          ),
        )
      ],
    );
  }
}

// class DataTableExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: ConstrainedBox(
//         constraints:
//             BoxConstraints(minWidth: MediaQuery.of(context).size.width),
//         child: DataTable(
//           border: TableBorder(
//               verticalInside: BorderSide(
//                   color: Color(0xffB7935F), style: BorderStyle.solid),
//               top: BorderSide(color: Color(0xffB7935F)),
//               horizontalInside: BorderSide(
//                 color: Color(0xffB7935F),
//               )),
//           columns: const <DataColumn>[
//             DataColumn(
//               label: Text(
//                 'اسم السورة',
//                 style: TextStyle(fontStyle: FontStyle.italic),
//               ),
//             ),
//             DataColumn(
//               label: Text(
//                 'عدد الآيات',
//                 style: TextStyle(fontStyle: FontStyle.italic),
//               ),
//             ),
//           ],
//           rows: const <DataRow>[
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('البقرة')),
//                 DataCell(Text('286')),
//               ],
//             ),
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('البقرة')),
//                 DataCell(Text('286')),
//               ],
//             ),
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('البقرة')),
//                 DataCell(Text('286')),
//               ],
//             ),
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('البقرة')),
//                 DataCell(Text('286')),
//               ],
//             ),
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('البقرة')),
//                 DataCell(Text('286')),
//               ],
//             ),
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('البقرة')),
//                 DataCell(Text('286')),
//               ],
//             ),
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('البقرة')),
//                 DataCell(Text('286')),
//               ],
//             ),
//             DataRow(
//               cells: <DataCell>[
//                 DataCell(Text('البقرة')),
//                 DataCell(Text('286')),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
