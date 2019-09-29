import 'package:flutter/material.dart';
import 'package:hestia_navigation/hestia_navigation.dart';

class PaginatedTable extends StatefulWidget {
  const PaginatedTable({Key key, this.renderer}) : super(key: key);

  final PaginatedTableRenderer renderer;

  @override
  _PaginatedTableState createState() => _PaginatedTableState();
}

class _PaginatedTableState extends State<PaginatedTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PaginatedDataTable(
          header: Container(
            child: Text('header'),
          ),
          rowsPerPage: widget.renderer.rows.length,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.pushNamed(context, '/game');
              },
            ),
          ],
          columns: widget.renderer.columns.map((TableColumnRenderer item) {
            return DataColumn(
              label: Row(
                children: item.contents.map((TableColumnContent content) {
                  if (content.hasText()) {
                    return Text(content.text.runs.map((e) => e.text).join(''));
                  }
                  return Text('');
                }).toList(),
              ),
            );
          }).toList(),
          source: _PaginatedTableDataSource(widget.renderer.rows),
          onPageChanged: (e) {
            print(e);
          }),
    );
  }
}

class _PaginatedTableDataSource extends DataTableSource {
  _PaginatedTableDataSource(this.rows);

  final List<TableRowRenderer> rows;

  @override
  int get rowCount => rows.length;

  @override
  bool get isRowCountApproximate => true;

  @override
  int get selectedRowCount => 0;

  @override
  DataRow getRow(int index) {
    return DataRow(
      cells: rows[index].cells.map((TableCellRenderer item) {
        return DataCell(
          Row(
            children: item.contents.map((TableCellContent content) {
              if (content.hasText()) {
                return Text(content.text.runs.map((e) => e.text).join(''));
              } else if (content.hasThumbnail()) {
                if (content.thumbnail.hasNormal()) {
                  return Container(
                    child: Image.network(
                      content.thumbnail.normal.url,
                      width: 40.0,
                      height: 56.0,
                    ),
                  );
                }
              } else if (content.hasChip()) {
                return Chip(
                  label: Text(
                    content.chip.label.runs.map((e) => e.text).join(''),
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                );
              }
              return Text('');
            }).toList(),
          ),
          showEditIcon: item.showEditIcon,
          onTap: () {},
        );
      }).toList(),
    );
  }
}
