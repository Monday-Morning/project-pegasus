import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/content/block_formatting.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';

class ArticleTable extends StatelessWidget {
  final String tableBody;
  final BlockFormatting blockFormatting;

  const ArticleTable(
      {super.key, required this.tableBody, required this.blockFormatting});

  static const JsonDecoder decoder = JsonDecoder();

  @override
  Widget build(BuildContext context) {
    final table = decoder.convert(tableBody).toString();
    final List<String> rawSingleDataArray =
        table.substring(3, table.length - 3).split(RegExp(r'\],\[')).toList();
    final List<List<String>> rawDoubleDataArray =
        rawSingleDataArray.map((e) => e.split('","').toList()).toList();
    final List<int> indexOfData =
        Iterable<int>.generate(rawDoubleDataArray.length).toList();
    final List<List<String>> finalTableData = rawDoubleDataArray
        .map((e) => e.map((e) => e.replaceAll('"', '')).toList())
        .toList();
    return SingleChildScrollView(
      child: Table(
        border: TableBorder.all(
          color: Theme.of(context).dividerColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        children: indexOfData.map((index) {
          final List<String> temp = finalTableData[index];
          final List<int> indexOfNestedData =
              Iterable<int>.generate(temp.length).toList();
          return TableRow(
            children: indexOfNestedData.map((i) {
              return Container(
                margin: EdgeInsets.only(
                  left: SizeConfig.safeBlockHorizontal! * 0.5,
                ),
                padding: EdgeInsets.all(
                  SizeConfig.safeBlockHorizontal! * 0.5,
                ),
                child: Text(
                  finalTableData[index][i],
                  style: (index == 0 && blockFormatting.hasHeaderRow!) ||
                          (i == 0 && blockFormatting.hasHeaderColumn!)
                      ? Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontWeight: FontWeight.bold,
                          )
                      : Theme.of(context).textTheme.bodyText2,
                ),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}
