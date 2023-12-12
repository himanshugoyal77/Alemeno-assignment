class TestModel {
  final String name;
  final int count;
  final double discountPrice;
  final double originalPrice;
  TestModel({
    required this.name,
    required this.count,
    required this.discountPrice,
    required this.originalPrice,
  });
}

List<TestModel> labTests = [
  TestModel(
      name: 'Thyroid Profile',
      count: 3,
      discountPrice: 1000,
      originalPrice: 1400),
  TestModel(
      name: 'Iron Study Test',
      count: 4,
      discountPrice: 600,
      originalPrice: 1000),
  TestModel(
      name: 'Thyroid Profile',
      count: 3,
      discountPrice: 1000,
      originalPrice: 1400),
  TestModel(
      name: 'Thyroid Profile',
      count: 3,
      discountPrice: 1000,
      originalPrice: 1400),
];
