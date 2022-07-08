import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ukrainian National Team',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PlutoGridExamplePage(),
    );
  }
}


class PlutoGridExamplePage extends StatefulWidget {
  const PlutoGridExamplePage({Key? key}) : super(key: key);

  @override
  State<PlutoGridExamplePage> createState() => _PlutoGridExamplePageState();
}

class _PlutoGridExamplePageState extends State<PlutoGridExamplePage> {
  final List<PlutoColumn> columns = <PlutoColumn>[
    PlutoColumn(
      title: 'Id',
      field: 'id',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Name',
      field: 'firstname',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Surname',
      field: 'lastname',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Age',
      field: 'age',
      type: PlutoColumnType.number(),
    ),
  PlutoColumn(
  title: 'Country',
  field: 'country',
  type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Cups',
      field: 'cups',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Position',
      field: 'position',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Foot',
      field: 'foot',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Team',
      field: 'team',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Goals',
      field: 'goals',
      type: PlutoColumnType.number(),
    ),
  ];

  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 1),
        'firstname': PlutoCell(value: 'Roman'),
        'lastname': PlutoCell(value: 'Yaremchuk'),
        'age': PlutoCell(value: 27),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 16),
        'position': PlutoCell(value: 'Striker'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Benfika'),
        'goals': PlutoCell(value: 10),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 2),
        'firstname': PlutoCell(value: 'Artem'),
        'lastname': PlutoCell(value: 'Besedin'),
        'age': PlutoCell(value: 28),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 11),
        'position': PlutoCell(value: 'Striker'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Dynamo Kyiv'),
        'goals': PlutoCell(value: 10),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 3),
        'firstname': PlutoCell(value: 'Andriy'),
        'lastname': PlutoCell(value: 'Yarmolenko'),
        'age': PlutoCell(value: 33),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 18),
        'position': PlutoCell(value: 'Right winger'),
        'foot': PlutoCell(value: 'Both'),
        'team': PlutoCell(value: 'WestHam'),
        'goals': PlutoCell(value: 30),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 4),
        'firstname': PlutoCell(value: 'Vitaliy'),
        'lastname': PlutoCell(value: 'Mykolenko'),
        'age': PlutoCell(value: 22),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 10),
        'position': PlutoCell(value: 'Left-back'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Everton'),
        'goals': PlutoCell(value: 10),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 5),
        'firstname': PlutoCell(value: 'Oleksandr'),
        'lastname': PlutoCell(value: 'Zinchenko'),
        'age': PlutoCell(value: 27),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 18),
        'position': PlutoCell(value: 'Left-back'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Manchester City'),
        'goals': PlutoCell(value: 12),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 6),
        'firstname': PlutoCell(value: 'Eduard'),
        'lastname': PlutoCell(value: 'Sobol'),
        'age': PlutoCell(value: 25),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 11),
        'position': PlutoCell(value: 'Right-back'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Brugge'),
        'goals': PlutoCell(value: 10),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 7),
        'firstname': PlutoCell(value: 'Ruslan'),
        'lastname': PlutoCell(value: 'Malinovskiy'),
        'age': PlutoCell(value: 27),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 16),
        'position': PlutoCell(value: 'Midfielder'),
        'foot': PlutoCell(value: 'Left'),
        'team': PlutoCell(value: 'Atalanta'),
        'goals': PlutoCell(value: 15),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 8),
        'firstname': PlutoCell(value: 'Heorhiy'),
        'lastname': PlutoCell(value: 'Buschan'),
        'age': PlutoCell(value: 25),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 15),
        'position': PlutoCell(value: 'Goalkeeper'),
        'foot': PlutoCell(value: 'Both'),
        'team': PlutoCell(value: 'Dynamo Kyiv'),
        'goals': PlutoCell(value: 0),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 9),
        'firstname': PlutoCell(value: 'Andriy'),
        'lastname': PlutoCell(value: 'Lunin'),
        'age': PlutoCell(value: 25),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 10),
        'position': PlutoCell(value: 'Goalkeeper'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Real Madrid'),
        'goals': PlutoCell(value: 0),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 10),
        'firstname': PlutoCell(value: 'Andriy'),
        'lastname': PlutoCell(value: 'Pyatov'),
        'age': PlutoCell(value: 38),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 20),
        'position': PlutoCell(value: 'Goalkeeper'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Shakhtar'),
        'goals': PlutoCell(value: 0),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 11),
        'firstname': PlutoCell(value: 'Illya'),
        'lastname': PlutoCell(value: 'Zabarnyi'),
        'age': PlutoCell(value: 21),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 10),
        'position': PlutoCell(value: 'Defender'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Dynamo Kyiv'),
        'goals': PlutoCell(value: 11),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 12),
        'firstname': PlutoCell(value: 'Oleksandr'),
        'lastname': PlutoCell(value: 'Syrota'),
        'age': PlutoCell(value: 21),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 10),
        'position': PlutoCell(value: 'Defender'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Dynamo Kyiv'),
        'goals': PlutoCell(value: 10),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 13),
        'firstname': PlutoCell(value: 'Mykola'),
        'lastname': PlutoCell(value: 'Matviyenko'),
        'age': PlutoCell(value: 27),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 11),
        'position': PlutoCell(value: 'Defender'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Shakhtar'),
        'goals': PlutoCell(value: 10),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 14),
        'firstname': PlutoCell(value: 'Denis'),
        'lastname': PlutoCell(value: 'Popov'),
        'age': PlutoCell(value: 23),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 12),
        'position': PlutoCell(value: 'Defender'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Dynamo Kyiv'),
        'goals': PlutoCell(value: 10),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 15),
        'firstname': PlutoCell(value: 'Sergiy'),
        'lastname': PlutoCell(value: 'Sydorchuk'),
        'age': PlutoCell(value: 28),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 17),
        'position': PlutoCell(value: 'Midfielder'),
        'foot': PlutoCell(value: 'Both'),
        'team': PlutoCell(value: 'Dynamo Kyiv'),
        'goals': PlutoCell(value: 13),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 16),
        'firstname': PlutoCell(value: 'Denys'),
        'lastname': PlutoCell(value: 'Garmash'),
        'age': PlutoCell(value: 28),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 14),
        'position': PlutoCell(value: 'Midfielder'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Dynamo Kyiv'),
        'goals': PlutoCell(value: 14),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 17),
        'firstname': PlutoCell(value: 'Volodymyr'),
        'lastname': PlutoCell(value: 'Shepelev'),
        'age': PlutoCell(value: 26),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 10),
        'position': PlutoCell(value: 'Midfielder'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Dynamo Kyiv'),
        'goals': PlutoCell(value: 10),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 18),
        'firstname': PlutoCell(value: 'Taras'),
        'lastname': PlutoCell(value: 'Stepanenko'),
        'age': PlutoCell(value: 29),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 18),
        'position': PlutoCell(value: 'Midfielder'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Shakhtar'),
        'goals': PlutoCell(value: 1),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 19),
        'firstname': PlutoCell(value: 'Mykola'),
        'lastname': PlutoCell(value: 'Shaparenko'),
        'age': PlutoCell(value: 25),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 11),
        'position': PlutoCell(value: 'Midfielder'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Dynamo Kyiv'),
        'goals': PlutoCell(value: 15),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 20),
        'firstname': PlutoCell(value: 'Vitaliy'),
        'lastname': PlutoCell(value: 'Buyalskiy'),
        'age': PlutoCell(value: 27),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 16),
        'position': PlutoCell(value: 'Midfielder'),
        'foot': PlutoCell(value: 'Both'),
        'team': PlutoCell(value: 'Dynamo Kyiv'),
        'goals': PlutoCell(value: 12),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 21),
        'firstname': PlutoCell(value: 'Oleksandr'),
        'lastname': PlutoCell(value: 'Karavaev'),
        'age': PlutoCell(value: 25),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 12),
        'position': PlutoCell(value: 'Right-back'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Dynamo Kyiv'),
        'goals': PlutoCell(value: 10),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 22),
        'firstname': PlutoCell(value: 'Viktor'),
        'lastname': PlutoCell(value: 'Tsyhankov'),
        'age': PlutoCell(value: 24),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 15),
        'position': PlutoCell(value: 'Right winger'),
        'foot': PlutoCell(value: 'Left'),
        'team': PlutoCell(value: 'Dynamo Kyiv'),
        'goals': PlutoCell(value: 17),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 23),
        'firstname': PlutoCell(value: 'Artem'),
        'lastname': PlutoCell(value: 'Dovbyk'),
        'age': PlutoCell(value: 22),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 11),
        'position': PlutoCell(value: 'Striker'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Sassuolo'),
        'goals': PlutoCell(value: 11),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 24),
        'firstname': PlutoCell(value: 'Oleksandr'),
        'lastname': PlutoCell(value: 'Zubkov'),
        'age': PlutoCell(value: 26),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 10),
        'position': PlutoCell(value: 'Striker'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Shakhtar'),
        'goals': PlutoCell(value: 10),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 25),
        'firstname': PlutoCell(value: 'Mykhaylo'),
        'lastname': PlutoCell(value: 'Mudryk'),
        'age': PlutoCell(value: 23),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 10),
        'position': PlutoCell(value: 'Left winger'),
        'foot': PlutoCell(value: 'Left'),
        'team': PlutoCell(value: 'Shakhtar'),
        'goals': PlutoCell(value: 10),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 26),
        'firstname': PlutoCell(value: 'Andriy'),
        'lastname': PlutoCell(value: 'Shevchenko'),
        'age': PlutoCell(value: 44),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 25),
        'position': PlutoCell(value: 'Coach'),
        'foot': PlutoCell(value: 'Both'),
        'team': PlutoCell(value: 'Ukraine'),
        'goals': PlutoCell(value: 50),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 27),
        'firstname': PlutoCell(value: 'Oleg'),
        'lastname': PlutoCell(value: 'Gusev'),
        'age': PlutoCell(value: 45),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 17),
        'position': PlutoCell(value: 'Coach assistant'),
        'foot': PlutoCell(value: 'Right'),
        'team': PlutoCell(value: 'Dnipro'),
        'goals': PlutoCell(value: 50),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 28),
        'firstname': PlutoCell(value: 'Oleg'),
        'lastname': PlutoCell(value: 'Blokhin'),
        'age': PlutoCell(value: 68),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 30),
        'position': PlutoCell(value: 'Coach'),
        'foot': PlutoCell(value: 'Left'),
        'team': PlutoCell(value: 'SSSR'),
        'goals': PlutoCell(value: 99),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 29),
        'firstname': PlutoCell(value: 'Ruslan'),
        'lastname': PlutoCell(value: 'Rotan'),
        'age': PlutoCell(value: 46),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 22),
        'position': PlutoCell(value: 'coach assistant'),
        'foot': PlutoCell(value: 'Both'),
        'team': PlutoCell(value: 'Dnipro'),
        'goals': PlutoCell(value: 34),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 30),
        'firstname': PlutoCell(value: 'Andriy'),
        'lastname': PlutoCell(value: 'Pavelko'),
        'age': PlutoCell(value: 55),
        'country': PlutoCell(value: 'Ukraine'),
        'cups': PlutoCell(value: 0),
        'position': PlutoCell(value: 'Manager'),
        'foot': PlutoCell(value: '-'),
        'team': PlutoCell(value: 'Ukraine'),
        'goals': PlutoCell(value: 0),
      },
    ),
  ];


  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'Id', fields: ['id'], expandedColumn: true),
    PlutoColumnGroup(title: 'Player information', fields: ['firstname', 'lastname', 'age', 'country','cups','position','foot','team','goals']),
  ];


  late final PlutoGridStateManager stateManager;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: PlutoGrid(
          columns: columns,
          rows: rows,
          columnGroups: columnGroups,
          onLoaded: (PlutoGridOnLoadedEvent event) {
            stateManager = event.stateManager;
          },
          onChanged: (PlutoGridOnChangedEvent event) {
            print(event);
          },
          configuration: const PlutoGridConfiguration(
            enableColumnBorder: true,
          ),
        ),
      ),
    );
  }
}
