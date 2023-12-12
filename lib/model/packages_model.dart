class PackageModel {
  final String name;
  final int countOfTests;
  final List<String> tests;
  final double price;

  PackageModel({
    required this.name,
    required this.countOfTests,
    required this.tests,
    required this.price,
  });
}

List<PackageModel> popularPackages = [
  PackageModel(
      name: 'Full Body Checkup',
      countOfTests: 92,
      tests: [
        'Blood Glucose Fasting',
        'Liver Function Test',
        'Blood Glucose Postprandial',
        'Complete Blood Count',
        'Lipid Profile',
        'Kidney Function Test',
        'Thyroid Profile Total',
        'Urine Routine & Microscopy',
      ],
      price: 2000)
];
