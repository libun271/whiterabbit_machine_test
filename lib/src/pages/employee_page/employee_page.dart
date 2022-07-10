import 'package:flutter/material.dart';
import '../../models/employee_model.dart';

class EmployeePage extends StatelessWidget {
  const EmployeePage({Key? key,
    required this.employee
  }) : super(key: key);

  final Employee employee;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15,),
             Center(
               child: CircleAvatar(
                 radius: 90,
                 backgroundImage: employee.profileImage != null ? NetworkImage(employee.profileImage!) :
                 const NetworkImage('https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png'),),
             ),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text('Name',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 5,),
                    const Icon(Icons.account_circle),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(employee.name!,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text('User name',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 5,),
                    const Icon(Icons.supervisor_account_outlined),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(employee.username!,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text('Email',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                const SizedBox(width: 5,),
                const Icon(Icons.email),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(employee.email!,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text('Address',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 5,),
                      employee.address != null ? Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(employee.address!.suite! +" , "+ employee.address!.street!,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ) : const Text(''),

                      employee.address != null ? Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(employee.address!.city!,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ) : const Text(''),
                      employee.address != null ? Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(employee.address!.zipcode!,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ) : const Text(''),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text('Phone',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 5,),
                    const Icon(Icons.phone),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: employee.phone == null ? const Text('') : Text(employee.phone!,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text('Web - Site',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 5,),
                    const Icon(Icons.web),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: employee.website == null ? const Text('') : Text(employee.website!,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text('Company Details ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 5,),
                      employee.company != null ? Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(employee.company!.name! ,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ) : const Text(''),

                      employee.company != null ? Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(employee.company!.bs!,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ) : const Text(''),
                      employee.company != null ? Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(employee.company!.catchPhrase!,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ) : const Text(''),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
