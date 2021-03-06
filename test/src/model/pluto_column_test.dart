import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../../helper/row_helper.dart';

void main() {
  group(
    'PlutoColumnTextAlign',
    () {
      test(
        'isLeft',
        () {
          // given
          const PlutoColumnTextAlign textAlign = PlutoColumnTextAlign.left;
          // when
          // then
          expect(textAlign.isLeft, isTrue);
        },
      );

      test(
        'isRight',
        () {
          // given
          const PlutoColumnTextAlign textAlign = PlutoColumnTextAlign.right;
          // when
          // then
          expect(textAlign.isRight, isTrue);
        },
      );

      test(
        'value is TextAlign.left',
        () {
          // given
          const PlutoColumnTextAlign textAlign = PlutoColumnTextAlign.left;
          // when
          // then
          expect(textAlign.value, TextAlign.left);
        },
      );

      test(
        'value is TextAlign.right',
        () {
          // given
          const PlutoColumnTextAlign textAlign = PlutoColumnTextAlign.right;
          // when
          // then
          expect(textAlign.value, TextAlign.right);
        },
      );
    },
  );

  group(
    'PlutoColumnSort',
    () {
      test(
        'isNone',
        () {
          // given
          const PlutoColumnSort columnSort = PlutoColumnSort.none;
          // when
          // then
          expect(columnSort.isNone, isTrue);
        },
      );

      test(
        'isAscending',
        () {
          // given
          const PlutoColumnSort columnSort = PlutoColumnSort.ascending;
          // when
          // then
          expect(columnSort.isAscending, isTrue);
        },
      );

      test(
        'isDescending',
        () {
          // given
          const PlutoColumnSort columnSort = PlutoColumnSort.descending;
          // when
          // then
          expect(columnSort.isDescending, isTrue);
        },
      );

      group(
        'toShortString',
        () {
          test(
            'None',
            () {
              const PlutoColumnSort columnSort = PlutoColumnSort.none;
              expect(columnSort.toShortString(), 'none');
            },
          );

          test(
            'Ascending',
            () {
              const PlutoColumnSort columnSort = PlutoColumnSort.ascending;
              expect(columnSort.toShortString(), 'ascending');
            },
          );

          test(
            'Descending',
            () {
              const PlutoColumnSort columnSort = PlutoColumnSort.descending;
              expect(columnSort.toShortString(), 'descending');
            },
          );
        },
      );

      group(
        'fromString',
        () {
          test(
            'None',
            () {
              expect(PlutoColumnSort.none.fromString('none'),
                  PlutoColumnSort.none);
            },
          );

          test(
            'Ascending',
            () {
              expect(PlutoColumnSort.none.fromString('ascending'),
                  PlutoColumnSort.ascending);
            },
          );

          test(
            'Descending',
            () {
              expect(PlutoColumnSort.none.fromString('descending'),
                  PlutoColumnSort.descending);
            },
          );
        },
      );
    },
  );

  group('PlutoColumnTypeText ??? defaultValue', () {
    test(
      'text ?????? ?????? ?????? ????????? ??????.',
      () {
        final PlutoColumnTypeText column = PlutoColumnType.text(
          defaultValue: 'default',
        ) as PlutoColumnTypeText;

        expect(column.defaultValue, 'default');
      },
    );

    test(
      'number ?????? ?????? ?????? ????????? ??????.',
      () {
        final PlutoColumnTypeNumber column = PlutoColumnType.number(
          defaultValue: 123,
        ) as PlutoColumnTypeNumber;

        expect(column.defaultValue, 123);
      },
    );

    test(
      'select ?????? ?????? ?????? ????????? ??????.',
      () {
        final PlutoColumnTypeSelect column = PlutoColumnType.select(
          <String>['One'],
          defaultValue: 'One',
        ) as PlutoColumnTypeSelect;

        expect(column.defaultValue, 'One');
      },
    );

    test(
      'date ?????? ?????? ?????? ????????? ??????.',
      () {
        final PlutoColumnTypeDate column = PlutoColumnType.date(
          defaultValue: DateTime.parse('2020-01-01'),
        ) as PlutoColumnTypeDate;

        expect(column.defaultValue, DateTime.parse('2020-01-01'));
      },
    );

    test(
      'time ?????? ?????? ?????? ????????? ??????.',
      () {
        final PlutoColumnTypeTime column = PlutoColumnType.time(
          defaultValue: '20:30',
        ) as PlutoColumnTypeTime;

        expect(column.defaultValue, '20:30');
      },
    );
  });

  group(
    'PlutoColumnTypeText',
    () {
      test(
        'text',
        () {
          final PlutoColumnTypeText textColumn =
              PlutoColumnType.text() as PlutoColumnTypeText;
          expect(textColumn.text, textColumn);
        },
      );

      test(
        'time',
        () {
          final PlutoColumnTypeText textColumn =
              PlutoColumnType.text() as PlutoColumnTypeText;
          expect(() {
            textColumn.time;
          }, throwsA(isA<TypeError>()));
        },
      );

      group(
        'isValid',
        () {
          test(
            '????????? ?????? true',
            () {
              final PlutoColumnTypeText textColumn =
                  PlutoColumnType.text() as PlutoColumnTypeText;
              expect(textColumn.isValid('text'), isTrue);
            },
          );

          test(
            '????????? ?????? true',
            () {
              final PlutoColumnTypeText textColumn =
                  PlutoColumnType.text() as PlutoColumnTypeText;
              expect(textColumn.isValid(1234), isTrue);
            },
          );

          test(
            '????????? ?????? true',
            () {
              final PlutoColumnTypeText textColumn =
                  PlutoColumnType.text() as PlutoColumnTypeText;
              expect(textColumn.isValid(''), isTrue);
            },
          );

          test(
            'null ??? ?????? false',
            () {
              final PlutoColumnTypeText textColumn =
                  PlutoColumnType.text() as PlutoColumnTypeText;
              expect(textColumn.isValid(null), isFalse);
            },
          );
        },
      );

      group(
        'compare',
        () {
          test(
            '???, ??? ??? ?????? -1',
            () {
              final PlutoColumnTypeText textColumn =
                  PlutoColumnType.text() as PlutoColumnTypeText;
              expect(textColumn.compare('???', '???'), -1);
            },
          );

          test(
            '???, ??? ??? ?????? 1',
            () {
              final PlutoColumnTypeText textColumn =
                  PlutoColumnType.text() as PlutoColumnTypeText;
              expect(textColumn.compare('???', '???'), 1);
            },
          );

          test(
            '???, ??? ??? ?????? 0',
            () {
              final PlutoColumnTypeText textColumn =
                  PlutoColumnType.text() as PlutoColumnTypeText;
              expect(textColumn.compare('???', '???'), 0);
            },
          );
        },
      );
    },
  );

  group('PlutoColumnTypeNumber', () {
    group('isValid', () {
      test(
        '????????? ?????? false',
        () {
          final PlutoColumnTypeNumber numberColumn =
              PlutoColumnType.number() as PlutoColumnTypeNumber;
          expect(numberColumn.isValid('text'), isFalse);
        },
      );

      test(
        '123 ??? ?????? true',
        () {
          final PlutoColumnTypeNumber numberColumn =
              PlutoColumnType.number() as PlutoColumnTypeNumber;
          expect(numberColumn.isValid(123), isTrue);
        },
      );

      test(
        '-123 ??? ?????? true',
        () {
          final PlutoColumnTypeNumber numberColumn =
              PlutoColumnType.number() as PlutoColumnTypeNumber;
          expect(numberColumn.isValid(-123), isTrue);
        },
      );

      test(
        'negative ??? false ?????? -123 ??? ?????? false',
        () {
          final PlutoColumnTypeNumber numberColumn = PlutoColumnType.number(
            negative: false,
          ) as PlutoColumnTypeNumber;
          expect(numberColumn.isValid(-123), isFalse);
        },
      );
    });

    group(
      'compare',
      () {
        test(
          '1, 2 ??? ?????? -1',
          () {
            final PlutoColumnTypeNumber column =
                PlutoColumnType.number() as PlutoColumnTypeNumber;
            expect(column.compare(1, 2), -1);
          },
        );

        test(
          '2, 1 ??? ?????? 1',
          () {
            final PlutoColumnTypeNumber column =
                PlutoColumnType.number() as PlutoColumnTypeNumber;
            expect(column.compare(2, 1), 1);
          },
        );

        test(
          '1, 1 ??? ?????? 0',
          () {
            final PlutoColumnTypeNumber column =
                PlutoColumnType.number() as PlutoColumnTypeNumber;
            expect(column.compare(1, 1), 0);
          },
        );
      },
    );
  });

  group('PlutoColumnTypeSelect', () {
    group('isValid', () {
      test(
        'items ??? ?????? ??????????????? true',
        () {
          final PlutoColumnTypeSelect selectColumn =
              PlutoColumnType.select(<String>[
            'A',
            'B',
            'C',
          ]) as PlutoColumnTypeSelect;
          expect(selectColumn.isValid('A'), isTrue);
        },
      );

      test(
        'items ??? ?????? ?????? ?????? ????????? false',
        () {
          final PlutoColumnTypeSelect selectColumn =
              PlutoColumnType.select(<String>[
            'A',
            'B',
            'C',
          ]) as PlutoColumnTypeSelect;
          expect(selectColumn.isValid('D'), isFalse);
        },
      );
    });

    group(
      'compare',
      () {
        test(
          'Two, Three ??? ?????? -1',
          () {
            final PlutoColumnTypeSelect column =
                PlutoColumnType.select(<String>[
              'One',
              'Two',
              'Three',
            ]) as PlutoColumnTypeSelect;
            expect(column.compare('Two', 'Three'), -1);
          },
        );

        test(
          'Three, Two  ??? ?????? 1',
          () {
            final PlutoColumnTypeSelect column =
                PlutoColumnType.select(<String>[
              'One',
              'Two',
              'Three',
            ]) as PlutoColumnTypeSelect;
            expect(column.compare('Three', 'Two'), 1);
          },
        );

        test(
          'Two, Two ??? ?????? 0',
          () {
            final PlutoColumnTypeSelect column =
                PlutoColumnType.select(<String>[
              'One',
              'Two',
              'Three',
            ]) as PlutoColumnTypeSelect;
            expect(column.compare('Two', 'Two'), 0);
          },
        );
      },
    );
  });

  group('PlutoColumnTypeDate', () {
    group('isValid', () {
      test(
        '?????? ????????? ????????? false',
        () {
          final PlutoColumnTypeDate dateColumn =
              PlutoColumnType.date() as PlutoColumnTypeDate;
          expect(dateColumn.isValid('Not a date'), isFalse);
        },
      );

      test(
        '?????? ???????????? true',
        () {
          final PlutoColumnTypeDate dateColumn =
              PlutoColumnType.date() as PlutoColumnTypeDate;
          expect(dateColumn.isValid('2020-01-01'), isTrue);
        },
      );

      test(
        '???????????? ?????? ?????? ????????? ?????? ????????? false',
        () {
          final PlutoColumnTypeDate dateColumn = PlutoColumnType.date(
            startDate: DateTime.parse('2020-02-01'),
          ) as PlutoColumnTypeDate;
          expect(dateColumn.isValid('2020-01-01'), isFalse);
        },
      );

      test(
        '???????????? ?????? ?????? ???????????? ????????? true',
        () {
          final PlutoColumnTypeDate dateColumn = PlutoColumnType.date(
            startDate: DateTime.parse('2020-02-01'),
          ) as PlutoColumnTypeDate;
          expect(dateColumn.isValid('2020-02-01'), isTrue);
        },
      );

      test(
        '???????????? ?????? ?????? ??????????????? ?????? true',
        () {
          final PlutoColumnTypeDate dateColumn = PlutoColumnType.date(
            startDate: DateTime.parse('2020-02-01'),
          ) as PlutoColumnTypeDate;
          expect(dateColumn.isValid('2020-02-03'), isTrue);
        },
      );

      test(
        '??????????????? ?????? ?????? ?????????????????? ????????? true',
        () {
          final PlutoColumnTypeDate dateColumn = PlutoColumnType.date(
            endDate: DateTime.parse('2020-02-01'),
          ) as PlutoColumnTypeDate;
          expect(dateColumn.isValid('2020-01-01'), isTrue);
        },
      );

      test(
        '??????????????? ?????? ?????? ??????????????? ????????? true',
        () {
          final PlutoColumnTypeDate dateColumn = PlutoColumnType.date(
            endDate: DateTime.parse('2020-02-01'),
          ) as PlutoColumnTypeDate;
          expect(dateColumn.isValid('2020-02-01'), isTrue);
        },
      );

      test(
        '??????????????? ?????? ?????? ?????????????????? ?????? false',
        () {
          final PlutoColumnTypeDate dateColumn = PlutoColumnType.date(
            endDate: DateTime.parse('2020-02-01'),
          ) as PlutoColumnTypeDate;
          expect(dateColumn.isValid('2020-02-03'), isFalse);
        },
      );

      test(
        '???????????? ??????????????? ?????? ?????? ?????? ????????? ????????? true',
        () {
          final PlutoColumnTypeDate dateColumn = PlutoColumnType.date(
            startDate: DateTime.parse('2020-02-01'),
            endDate: DateTime.parse('2020-02-05'),
          ) as PlutoColumnTypeDate;
          expect(dateColumn.isValid('2020-02-03'), isTrue);
        },
      );

      test(
        '???????????? ??????????????? ?????? ?????? ?????? ???????????? ????????? false',
        () {
          final PlutoColumnTypeDate dateColumn = PlutoColumnType.date(
            startDate: DateTime.parse('2020-02-01'),
            endDate: DateTime.parse('2020-02-05'),
          ) as PlutoColumnTypeDate;
          expect(dateColumn.isValid('2020-01-03'), isFalse);
        },
      );

      test(
        '???????????? ??????????????? ?????? ?????? ?????? ???????????? ?????? false',
        () {
          final PlutoColumnTypeDate dateColumn = PlutoColumnType.date(
            startDate: DateTime.parse('2020-02-01'),
            endDate: DateTime.parse('2020-02-05'),
          ) as PlutoColumnTypeDate;
          expect(dateColumn.isValid('2020-02-06'), isFalse);
        },
      );
    });

    group(
      'compare',
      () {
        test(
          '2019-12-30, 2020-01-01 ??? ?????? -1',
          () {
            final PlutoColumnTypeDate column =
                PlutoColumnType.date() as PlutoColumnTypeDate;
            expect(column.compare('2019-12-30', '2020-01-01'), -1);
          },
        );

        // ?????? ????????? ?????? ??? ?????? ????????? compare ????????? ????????? ????????? ?????????.
        // ????????? ?????? compare ????????? ???????????? ??????. compare ????????? ????????? ????????????
        // ???????????? ???????????? ????????? ????????? ???????????? ?????? ??? ??? ?????? ??????.
        test(
          '12/30/2019, 01/01/2020 ??? ?????? 1',
          () {
            final PlutoColumnTypeDate column =
                PlutoColumnType.date(format: 'MM/dd/yyyy')
                    as PlutoColumnTypeDate;
            expect(column.compare('12/30/2019', '01/01/2020'), 1);
          },
        );

        test(
          '2020-01-01, 2019-12-30  ??? ?????? 1',
          () {
            final PlutoColumnTypeDate column =
                PlutoColumnType.date() as PlutoColumnTypeDate;
            expect(column.compare('2020-01-01', '2019-12-30'), 1);
          },
        );

        // ?????? ????????? ?????? ??? ?????? ????????? compare ????????? ????????? ????????? ?????????.
        // ????????? ?????? compare ????????? ???????????? ??????. compare ????????? ????????? ????????????
        // ???????????? ???????????? ????????? ????????? ???????????? ?????? ??? ??? ?????? ??????.
        test(
          '01/01/2020, 12/30/2019  ??? ?????? -1',
          () {
            final PlutoColumnTypeDate column =
                PlutoColumnType.date(format: 'MM/dd/yyyy')
                    as PlutoColumnTypeDate;
            expect(column.compare('01/01/2020', '12/30/2019'), -1);
          },
        );

        test(
          '2020-01-01, 2020-01-01 ??? ?????? 0',
          () {
            final PlutoColumnTypeDate column =
                PlutoColumnType.date() as PlutoColumnTypeDate;
            expect(column.compare('2020-01-01', '2020-01-01'), 0);
          },
        );

        test(
          '01/01/2020, 01/01/2020  ??? ?????? 0',
          () {
            final PlutoColumnTypeDate column =
                PlutoColumnType.date(format: 'MM/dd/yyyy')
                    as PlutoColumnTypeDate;
            expect(column.compare('01/01/2020', '01/01/2020'), 0);
          },
        );
      },
    );
  });

  group(
    'PlutoColumnTypeTime',
    () {
      group('isValid', () {
        test(
          '24:00 ?????? false',
          () {
            final PlutoColumnTypeTime timeColumn =
                PlutoColumnType.time() as PlutoColumnTypeTime;
            expect(timeColumn.isValid('24:00'), isFalse);
          },
        );

        test(
          '00:60 ?????? false',
          () {
            final PlutoColumnTypeTime timeColumn =
                PlutoColumnType.time() as PlutoColumnTypeTime;
            expect(timeColumn.isValid('00:60'), isFalse);
          },
        );

        test(
          '24:60 ?????? false',
          () {
            final PlutoColumnTypeTime timeColumn =
                PlutoColumnType.time() as PlutoColumnTypeTime;
            expect(timeColumn.isValid('24:60'), isFalse);
          },
        );

        test(
          '00:00 ?????? true',
          () {
            final PlutoColumnTypeTime timeColumn =
                PlutoColumnType.time() as PlutoColumnTypeTime;
            expect(timeColumn.isValid('00:00'), isTrue);
          },
        );

        test(
          '00:59 ?????? true',
          () {
            final PlutoColumnTypeTime timeColumn =
                PlutoColumnType.time() as PlutoColumnTypeTime;
            expect(timeColumn.isValid('00:59'), isTrue);
          },
        );

        test(
          '23:00 ?????? true',
          () {
            final PlutoColumnTypeTime timeColumn =
                PlutoColumnType.time() as PlutoColumnTypeTime;
            expect(timeColumn.isValid('23:00'), isTrue);
          },
        );

        test(
          '23:59 ?????? true',
          () {
            final PlutoColumnTypeTime timeColumn =
                PlutoColumnType.time() as PlutoColumnTypeTime;
            expect(timeColumn.isValid('23:59'), isTrue);
          },
        );
      });
    },
  );

  group('formattedValueForType', () {
    test(
      'Number column ??? ?????? 12345 ?????? 12,345 ??? ????????? ?????? ????????? ??????.',
      () {
        final PlutoColumn column = PlutoColumn(
          title: 'number column',
          field: 'number_column',
          type: PlutoColumnType.number(), // ?????? ?????? (#,###)
        );

        expect(column.formattedValueForType(12345), '12,345');
      },
    );

    test(
      'Number column ??? ?????? 12345678 ?????? 12,345,678 ??? ????????? ?????? ????????? ??????.',
      () {
        final PlutoColumn column = PlutoColumn(
          title: 'number column',
          field: 'number_column',
          type: PlutoColumnType.number(), // ?????? ?????? (#,###)
        );

        expect(column.formattedValueForType(12345678), '12,345,678');
      },
    );

    test(
      'Number column ??? ?????? ?????? 12345 ?????? 12345 ??? ????????? ?????? ?????? ????????? ??????.',
      () {
        final PlutoColumn column = PlutoColumn(
          title: 'number column',
          field: 'number_column',
          type: PlutoColumnType.text(), // ?????? ?????? (#,###)
        );

        expect(column.formattedValueForType('12345'), '12345');
      },
    );
  });

  group('formattedValueForDisplay', () {
    test(
      'formatter ??? ?????? ?????? Number column ??? ????????? ?????? ????????? ??????????????? ??????.',
      () {
        final PlutoColumn column = PlutoColumn(
          title: 'number column',
          field: 'number_column',
          type: PlutoColumnType.number(), // ?????? ?????? (#,###)
        );

        expect(column.formattedValueForDisplay(12345), '12,345');
      },
    );

    test(
      'formatter ??? ?????? ?????? Number column ??? ????????? ?????? ????????? ?????? '
      'formatter ??? ?????? ????????? ??????.',
      () {
        final PlutoColumn column = PlutoColumn(
          title: 'number column',
          field: 'number_column',
          type: PlutoColumnType.number(), // ?????? ?????? (#,###)
          formatter: (dynamic value) => '\$ $value',
        );

        expect(column.formattedValueForDisplay(12345), '\$ 12345');
      },
    );
  });

  group('checkReadOnly', () {
    makeColumn({
      required bool readOnly,
      PlutoColumnCheckReadOnly? checkReadOnly,
    }) {
      return PlutoColumn(
        title: 'title',
        field: 'field',
        type: PlutoColumnType.text(),
        readOnly: readOnly,
        checkReadOnly: checkReadOnly,
      );
    }

    makeRow(PlutoColumn column) {
      return RowHelper.count(1, [column]).first;
    }

    test('readOnly = false, checkReadOnly = ????????? ?????? false ??? ???????????? ??????.', () {
      final column = makeColumn(readOnly: false);

      expect(column.readOnly, false);
    });

    test('readOnly = true, checkReadOnly = ????????? ?????? true ??? ???????????? ??????.', () {
      final column = makeColumn(readOnly: true);

      expect(column.readOnly, true);
    });

    test('readOnly = false, checkReadOnly = true ?????? true ??? ???????????? ??????.', () {
      final column =
          makeColumn(readOnly: false, checkReadOnly: (_, __) => true);

      final row = makeRow(column);

      final cell = row.cells['field'];

      expect(column.checkReadOnly(row, cell), true);
    });

    test('readOnly = true, checkReadOnly = false ?????? false ??? ???????????? ??????.', () {
      final column =
          makeColumn(readOnly: true, checkReadOnly: (_, __) => false);

      final row = makeRow(column);

      final cell = row.cells['field'];

      expect(column.checkReadOnly(row, cell), false);
    });

    test(
      'readOnly = false, checkReadOnly = true ??????, '
      'checkRow ??? row ??? ?????? ?????? ????????? false ??? ???????????? ??????.',
      () {
        final column =
            makeColumn(readOnly: false, checkReadOnly: (_, __) => true);

        final row = makeRow(column);

        final cell = row.cells['field'];

        expect(column.checkReadOnly(null, cell), false);
      },
    );

    test(
      'readOnly = false, checkReadOnly = true ??????, '
      'checkRow ??? cell ??? ?????? ?????? ????????? false ??? ???????????? ??????.',
      () {
        final column =
            makeColumn(readOnly: false, checkReadOnly: (_, __) => true);

        final row = makeRow(column);

        expect(column.checkReadOnly(row, null), false);
      },
    );

    test(
      'readOnly = false, checkReadOnly = true ??????, '
      'checkRow ??? row, cell ??? ?????? ?????? ????????? false ??? ???????????? ??????.',
      () {
        final column =
            makeColumn(readOnly: false, checkReadOnly: (_, __) => true);

        expect(column.checkReadOnly(null, null), false);
      },
    );
  });
}
