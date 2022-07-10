import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:white_rabbit_machine_test/src/pages/employee_detail_page/employee_details_controller.dart';
import 'package:white_rabbit_machine_test/src/pages/employee_page/employee_page.dart';

class EmployeeDetailPage extends StatelessWidget {
   EmployeeDetailPage({Key? key}) : super(key: key);

  final employeeController = Get.put(EmployeeDetailsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
        return employeeController.employeeList.isEmpty ? CircularProgressIndicator()
            : Scaffold(
          appBar: AppBar(
            title: Text('Employee Details'),
          ),
          body: Obx(() {
              return ListView.separated(
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Get.to(EmployeePage(employee: employeeController.employeeList[index]));
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20)
                          ),

                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: employeeController.employeeList[index].profileImage != null ? NetworkImage(employeeController.employeeList[index].profileImage!) :
                                  NetworkImage('https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png'),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(employeeController.employeeList[index].name!),
                                  employeeController.employeeList[index].company!= null ? Text(employeeController.employeeList[index].company!.name!) : Text(''),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context,index){
                    return SizedBox();
                  },
                  itemCount: employeeController.employeeList.length
              );
            }
          ),
        );
      }
    );
  }
}
