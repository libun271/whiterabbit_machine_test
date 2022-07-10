
import 'package:hive_flutter/hive_flutter.dart';

import '../models/employee_model.dart';

class DbHelper {
  static Future initialize() async {
    await Hive.initFlutter();

    Hive.registerAdapter(EmployeeAdapter());
    Hive.registerAdapter(AddressAdapter());
    Hive.registerAdapter(CompanyAdapter());
    await Hive.openBox<Employee>('employee');

    return;
  }

  static Box<Employee> employeeBox() {
    return Hive.box<Employee>('employee');
  }

  static close() {
    Hive.close();
  }
}