import 'package:equatable/equatable.dart';

import 'customer_dart.dart';

class Review extends Equatable {
  final int id;
  final Customer customer;
  final String date;
  final int reviewRate;
  final String reviewBody;

  const Review(
      {required this.id,
      required this.customer,
      required this.date,
      required this.reviewRate,
      required this.reviewBody});

  @override
  List<Object?> get props => [
        id,
        customer,
        date,
        reviewRate,
        reviewBody,
      ];

  static List<Review> heroReview = [
    Review(
      id: 01,
      customer: Customer(firstName: 'Андрій', secondName: 'Садовий'),
      date: '12 Січня 2023, 12:55',
      reviewRate: 4,
      reviewBody:
          'Взагалі, мені подобається. Тільки з андроїдом (ос) доводиться повозитися, як завжди ... в налаштуваннях мудрують',
    ),
    Review(
      id: 01,
      customer: Customer(firstName: 'Тарас', secondName: 'Грицун'),
      date: '01 Січня 2023, 07:55',
      reviewRate: 4,
      reviewBody:
          'Вперше з таким зіткнулася, що телефон прийшов не працюючим – не вмикається, стояв на зарядці хвилин 15 і все одно не ввімкнувся! Прикро! До цього замовляла також ксіомі і все працювало!',
    ),
    Review(
      id: 01,
      customer: Customer(firstName: 'Анжеліка', secondName: 'Чернопіщенко'),
      date: '27 Жовтня 2022, 17:05',
      reviewRate: 4,
      reviewBody:
          'Все чітко. Доставка, видача. Не разу не купував смартфони в інтернет-магазинах. Тільки наживо, щоб доторкнутися, подивитися. Але на диво все добре.',
    ),
    Review(
      id: 01,
      customer: Customer(firstName: 'Терентій', secondName: ''),
      date: '12 Січня 2023, 12:55',
      reviewRate: 4,
      reviewBody:
          'ТерентійТерентійТерентій',
    ),
    Review(
      id: 02,
      customer: Customer(firstName: 'Кіндрат', secondName: 'С'),
      date: '12 Січня 2023, 12:55',
      reviewRate: 4,
      reviewBody:
          'Кіндрат Терентій Терентій Терентій',
    ),
  ];
}
