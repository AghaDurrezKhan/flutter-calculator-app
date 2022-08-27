import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:my_calculator/components/button.dart';
import 'package:velocity_x/velocity_x.dart';

class DisplayWithButtonsContainer extends StatefulWidget {
  const DisplayWithButtonsContainer({Key? key}) : super(key: key);

  @override
  State<DisplayWithButtonsContainer> createState() =>
      _DisplayWithButtonsContainerState();
}

class _DisplayWithButtonsContainerState
    extends State<DisplayWithButtonsContainer> {
  String displayValue = '0';
  String actualExpression = '0';
  // creating an instance of parser for parsing (translating) the expression
  Parser p = Parser();
  // using `late` keyword to express the late initialization of value
  late Expression parsedExpression;

  void _updateExpressionByAddingValue(String value, {String? valueToShow}) {
    setState(
      () {
        if (valueToShow != null) {
          displayValue += valueToShow;
          actualExpression += value;
        } else {
          displayValue += value;
          actualExpression += value;
        }
      },
    );
  }

  void evaluate() {
    // print('Displayed Expression: ' + displayValue);
    // print('Actual Expression: ' + actualExpression);
    parsedExpression = p.parse(actualExpression);
    setState(
      () {
        displayValue = actualExpression = parsedExpression
            .evaluate(EvaluationType.REAL, ContextModel())
            .toString();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        displayValue.text.xl6.align(TextAlign.end).make().p(16),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(32),
              topLeft: Radius.circular(32),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 32, top: 24, right: 32, bottom: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCustomButton(
                      buttonText: 'AC',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.secondary,
                      onPressed: () {
                        setState(
                          () {
                            actualExpression = '';
                            displayValue = '';
                          },
                        );
                      },
                    ),
                    MyCustomButton(
                      buttonText: 'C',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.secondary,
                      onPressed: () {
                        setState(
                          () {
                            displayValue = displayValue.substring(
                                0, displayValue.length - 1);
                            actualExpression = actualExpression.substring(
                                0, actualExpression.length - 1);
                          },
                        );
                      },
                    ),
                    MyCustomButton(
                      buttonText: '%',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.secondary,
                      onPressed: () {
                        _updateExpressionByAddingValue('/100');
                        evaluate();
                      },
                    ),
                    MyCustomButton(
                      buttonText: '÷',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.primary,
                      onPressed: () {
                        _updateExpressionByAddingValue('/', valueToShow: '÷');
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCustomButton(
                      buttonText: '7',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.onTertiary,
                      onPressed: () {
                        _updateExpressionByAddingValue('7');
                      },
                    ),
                    MyCustomButton(
                      buttonText: '8',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.onTertiary,
                      onPressed: () {
                        _updateExpressionByAddingValue('8');
                      },
                    ),
                    MyCustomButton(
                      buttonText: '9',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.onTertiary,
                      onPressed: () {
                        _updateExpressionByAddingValue('9');
                      },
                    ),
                    MyCustomButton(
                      buttonText: '×',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.primary,
                      onPressed: () {
                        _updateExpressionByAddingValue('*', valueToShow: '×');
                      },
                    ),
                  ],
                ).py(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCustomButton(
                      buttonText: '4',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.onTertiary,
                      onPressed: () {
                        _updateExpressionByAddingValue('4');
                      },
                    ),
                    MyCustomButton(
                      buttonText: '5',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.onTertiary,
                      onPressed: () {
                        _updateExpressionByAddingValue('5');
                      },
                    ),
                    MyCustomButton(
                      buttonText: '6',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.onTertiary,
                      onPressed: () {
                        _updateExpressionByAddingValue('6');
                      },
                    ),
                    MyCustomButton(
                      buttonText: '-',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.primary,
                      onPressed: () {
                        _updateExpressionByAddingValue('-');
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCustomButton(
                      buttonText: '1',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.onTertiary,
                      onPressed: () {
                        _updateExpressionByAddingValue('1');
                      },
                    ),
                    MyCustomButton(
                      buttonText: '2',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.onTertiary,
                      onPressed: () {
                        _updateExpressionByAddingValue('2');
                      },
                    ),
                    MyCustomButton(
                      buttonText: '3',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.onTertiary,
                      onPressed: () {
                        _updateExpressionByAddingValue('3');
                      },
                    ),
                    MyCustomButton(
                      buttonText: '+',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.primary,
                      onPressed: () {
                        _updateExpressionByAddingValue('+');
                      },
                    ),
                  ],
                ).py(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCustomButton(
                      buttonText: '0',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.onTertiary,
                      onPressed: () {
                        _updateExpressionByAddingValue('0');
                      },
                      width: 165,
                    ),
                    MyCustomButton(
                      buttonText: '.',
                      buttonColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.onTertiary,
                      onPressed: () {
                        _updateExpressionByAddingValue('.');
                      },
                    ),
                    MyCustomButton(
                      buttonText: '=',
                      buttonColor: Theme.of(context).colorScheme.primary,
                      textColor: const Color(0xFFFFFFFF),
                      onPressed: () {
                        evaluate();
                      },
                    ),
                  ],
                ),
                8.heightBox,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
