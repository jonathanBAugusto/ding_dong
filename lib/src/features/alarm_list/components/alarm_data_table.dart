import '../../../core/models/alarm.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class AlarmDataTable extends StatelessWidget {
  final List<Alarm>? alarms;

  const AlarmDataTable({super.key, required this.alarms});

  @override
  Widget build(BuildContext context) {
    return PlutoGrid(
      columns: [
        PlutoColumn(title: 'ID', field: 'id', type: PlutoColumnType.number()),
        PlutoColumn(title: 'Label', field: 'label', type: PlutoColumnType.text()),
        PlutoColumn(title: 'Time', field: 'time', type: PlutoColumnType.text()),
        PlutoColumn(title: 'Repeat Mode', field: 'repeatMode', type: PlutoColumnType.text()),
        PlutoColumn(title: 'Sound Asset', field: 'soundAsset', type: PlutoColumnType.text()),
      ],
      rows:
          alarms?.map((alarm) {
            return PlutoRow(
              cells: {
                'id': PlutoCell(value: alarm.id),
                'label': PlutoCell(value: alarm.label),
                'time': PlutoCell(value: alarm.time),
                'repeatMode': PlutoCell(value: alarm.repeatMode),
                'soundAsset': PlutoCell(value: alarm.soundAsset),
              },
            );
          }).toList() ??
          [],
    );
  }
}
