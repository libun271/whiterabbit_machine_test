

import 'package:get/get.dart';
import 'package:white_rabbit_machine_test/src/pages/employee_detail_page/api_provider_employee.dart';

import '../../dbhelper/dbhelper.dart';
import '../../models/employee_model.dart';

class EmployeeDetailsController extends GetxController{

  var employeeList = List<Employee>.empty().obs;
  var employee = <EmployeeData>[].obs;

  final _empBox = DbHelper.employeeBox();
  final _apiProvider = ApiProviderEmployee();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getEmployeeDetails();
  }

  getEmployeeDetails() async {
    if(_empBox.values.toList().isEmpty){
      var response = await _apiProvider.getAddressList();
      employeeList.value = response.data;
      print(employeeList.length);
      _empBox.clear();
      _empBox.addAll(employeeList);
      print(_empBox);
    }else{
      print('here');
      employeeList.addAll(_empBox.values);
    }

  }
}