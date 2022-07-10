
import '../../models/employee_model.dart';
import '../../resources.dart';

class ApiProviderEmployee{

  Future<EmployeeData> getAddressList() async {
    final response = await ApiBaseHelper().get('http://www.mocky.io/v2/5d565297300000680030a986');
    return EmployeeData.fromJson(response);
  }
}