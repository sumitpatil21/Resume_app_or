import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_app/global_var.dart';

import 'ProfilePage.dart';
import 'Skills_Page.dart';

class InvoicePagePdf extends StatefulWidget {
  const InvoicePagePdf({super.key});

  @override
  State<InvoicePagePdf> createState() => _InvoicePagePdfState();
}

class _InvoicePagePdfState extends State<InvoicePagePdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :PdfPreview(
        build: (format) => generataCv(),
      )
    );
  }
}
Future<Uint8List> generataCv()
async {

  final pdf=pw.Document();
  final img = pw.MemoryImage(fimg!.readAsBytesSync());
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (context) => pw.Row(
        children: [
          pw.Container(
            height: 728,
            width: 200,
           decoration: pw.BoxDecoration(
             color: PdfColors.blue400,
             borderRadius: pw.BorderRadius.only(topLeft: pw.Radius.circular(20),bottomLeft:pw.Radius.circular(20) )
           ),
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Container(
                  margin: pw.EdgeInsets.only(top: 40,bottom: 20,left: 40),
                  height: 120,
                  width: 120,
                  decoration: pw.BoxDecoration(
                    color: PdfColors.black,
                    borderRadius: pw.BorderRadius.circular(60),
                    border: pw.Border.all(
                      color: PdfColors.white,
                      width: 5,
                    ),
                    image: (fimg! !=null)?pw.DecorationImage(
                      image: img,
                      fit: pw.BoxFit.cover,
                    ):null,
                    // image: pw.DecorationImage(
                    // )
                  )
                ),
               pw.Padding(padding: pw.EdgeInsets.only(left: 20,),
               child:  pw.Column(
                   crossAxisAlignment: pw.CrossAxisAlignment.start,
                   children: [
                     pw.Text("CONTACT",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold)),
                     pw.Text("---------------------",style: pw.TextStyle(fontSize: 20,)),
                     pw.Text(ph!,style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold)),
                     pw.Text(email!,style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold)),
                     pw.Text(address!,style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold)),
                     pw.Text(website!,style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold)),
                   ]
               ),),
                pw.Padding(padding: pw.EdgeInsets.only(left: 20,top: 20),
                    child:  pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text("EDUCATION",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold)),
                          pw.Text("---------------------",style: pw.TextStyle(fontSize: 20,)),
                          pw.Text(school!,style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold)),
                          pw.Text(department!,style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold)),
                          pw.Text(faculty!,style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold)),
                          pw.Text(level!,style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold)),
                          pw.Text(gpa!,style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold)),
                        ]
                    ),),
                pw.Padding(padding: pw.EdgeInsets.only(left: 20,top: 20),
                  child:  pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text("SKILLS",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold)),
                        pw.Text("---------------------",style: pw.TextStyle(fontSize: 20,)),
                      ]
                  ),),
                pw.Padding(padding: pw.EdgeInsets.only(left: 20,top: 20),
                  child:  pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text("LANGUAGES",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold)),
                        pw.Text("---------------------",style: pw.TextStyle(fontSize: 20,)),
                      ]
                  ),),

              ]
            )
          ),
         pw.Padding(padding: pw.EdgeInsets.only(left: 50,top: 40),child: pw.Column(
           crossAxisAlignment: pw.CrossAxisAlignment.start,
           children: [
             pw.Text(fullname!,style: pw.TextStyle(fontSize: 50,fontWeight: pw.FontWeight.bold)),
             pw.Text(position!,style: pw.TextStyle(fontSize: 35)),
             pw.Text("---------",style: pw.TextStyle(fontSize: 35,fontWeight: pw.FontWeight.bold,color: PdfColors.indigo)),
          //  ...List.generate(skillslist.length, (index) => pw.Text((skillslist[index]).toString(),style: pw.TextStyle(fontSize: 10))),
             pw.SizedBox(
               height: 10
             ),
             pw.Text("PROFILE",style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold)),
             pw.Text("--------------------------------------",style: pw.TextStyle(fontSize: 20,)),
             pw.Text("I am a dedicated, organized and meth\n individual. I have good interpersonala \nam an excellent team worker and and\nand very willing to learn and developer\nskills. I am reliable and dependable by\n new responsibilities within a wide rang",style: pw.TextStyle(fontSize: 15,),),
             pw.SizedBox(
                 height: 10
             ),
             pw.Text("WORK EXPERIENCE",style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold)),
             pw.Text("--------------------------------------",style: pw.TextStyle(fontSize: 20,)),
             pw.Row(
               children: [
                 pw.Text(company!,style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold),),
                 pw.SizedBox(width: 165),
                 pw.Text(fromDatr!,style: pw.TextStyle(fontSize: 15,),),
                 pw.Text("-",style: pw.TextStyle(fontSize: 15,),),
                 pw.Text(endDate!,style: pw.TextStyle(fontSize: 15,),),

               ]
             ),
             pw.Text(title!,style: pw.TextStyle(fontSize: 15,),),
             pw.SizedBox(height: 10),
             pw.Text("Job title, company name, location theo \nemployment Month and year started an \nleft the position.Between three and sixth\n bullet points briefly outlining your impac\n at the company",style: pw.TextStyle(fontSize: 15,),),
             pw.SizedBox(
                 height: 10
             ),
             pw.Text("ABOUT ME",style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold)),
             pw.Text("I am flexible, reliable and possess excell\nent time keeping skills. I am an enthusiat\nic, self-motivated,reliable,responsible and\na hard working person.I am a mature tem\n worker and adaptable to all challenging\nThat About me......",style: pw.TextStyle(fontSize: 15,)),

           ],
         ))
        ]
      ),
    )
  );
  return pdf.save();

}