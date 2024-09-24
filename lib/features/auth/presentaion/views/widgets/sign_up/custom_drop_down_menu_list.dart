import 'package:comatecs/core/utils/widgets/custom_drop_down_menu.dart';
import 'package:comatecs/data/models/menu_model.dart';
import 'package:flutter/material.dart';

class CustomDropDownMenuList extends StatelessWidget {
  const CustomDropDownMenuList({
    super.key,
    required this.workType,
    required this.companyType,
    required this.employeeNumber,
    required this.yourRole,
  });
  final TextEditingController workType;
  final TextEditingController companyType;
  final TextEditingController employeeNumber;
  final TextEditingController yourRole;
  final List<MenuModel> workTypeMenuList = const [
    MenuModel(id: 1, title: 'معدات صناعية'),
    MenuModel(id: 2, title: 'الأدوات والمعدات'),
    MenuModel(id: 3, title: 'عدد يدوية'),
    MenuModel(id: 4, title: 'معدات'),
  ];
  final List<MenuModel> companyNameMenuList = const [
    MenuModel(id: 1, title: 'شركة صناعية'),
    MenuModel(id: 2, title: 'شركة الأدوات والمعدات'),
    MenuModel(id: 3, title: 'شركة عدد يدوية'),
    MenuModel(id: 4, title: 'شركة معدات'),
  ];
  final List<MenuModel> employeesNumberMenuList = const [
    MenuModel(id: 1, title: '2'),
    MenuModel(id: 2, title: '4'),
    MenuModel(id: 3, title: '6'),
    MenuModel(id: 4, title: '8'),
  ];
  final List<MenuModel> yorRoleMenuList = const [
    MenuModel(id: 1, title: 'موظف'),
    MenuModel(id: 2, title: 'مدير'),
    MenuModel(id: 3, title: 'مستخدم'),
    MenuModel(id: 4, title: 'مشرف'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDropDownMenu(
          initialSelection: workTypeMenuList.first,
          label: 'اختر طبيعة عملك ',
          dropdownMenuEntries:
              workTypeMenuList.map<DropdownMenuEntry<MenuModel>>((menu) {
            return DropdownMenuEntry(
              value: menu,
              label: menu.title,
            );
          }).toList(),
          text: 'طبيعية العمل',
          controller: workType,
        ),
        const SizedBox(
          height: 41,
        ),
        CustomDropDownMenu(
          initialSelection: companyNameMenuList.first,
          label: 'اختر نوع الشركة',
          dropdownMenuEntries: companyNameMenuList
              .map<DropdownMenuEntry<MenuModel>>((MenuModel menu) {
            return DropdownMenuEntry(
              value: menu,
              label: menu.title,
            );
          }).toList(),
          text: 'نوع الشركة',
          controller: companyType,
        ),
        const SizedBox(
          height: 41,
        ),
        CustomDropDownMenu(
          initialSelection: employeesNumberMenuList.first,
          label: 'اختر  عدد الموظفين ',
          dropdownMenuEntries:
              employeesNumberMenuList.map<DropdownMenuEntry<MenuModel>>((menu) {
            return DropdownMenuEntry(
              value: menu,
              label: menu.title,
            );
          }).toList(),
          text: 'عدد الموظفين',
          controller: employeeNumber,
        ),
        const SizedBox(
          height: 41,
        ),
        CustomDropDownMenu(
          initialSelection: yorRoleMenuList.first,  
          label: 'اختر وظيفتك',
          dropdownMenuEntries:
              yorRoleMenuList.map<DropdownMenuEntry<MenuModel>>((menu) {
            return DropdownMenuEntry(
              value: menu,
              label: menu.title,
            );
          }).toList(),
          text: 'وظيفتتك داخل الشركة',
          controller: yourRole,
        ),
      ],
    );
  }
}
