import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_firestore/constants/app_style.dart';

import '../widget/date_time_widget.dart';
import '../widget/radio_widget.dart';
import '../widget/textfield_widget.dart';

class AddNewTaskModel extends StatelessWidget {
  const AddNewTaskModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              'New Task ToDo',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Divider(
            thickness: 1.2,
            color: Colors.grey.shade200,
          ),
          const Text('Title Task', style: AppStyle.heading1),
          const Gap(6),
          const TextFieldWidget(maxLine: 1, hintText: 'Add Task Name.'),
          const Gap(6),
          const Text('Description', style: AppStyle.heading1),
          const TextFieldWidget(maxLine: 5, hintText: 'Add Task Name.'),
          const Gap(12),
          const Text('Category', style: AppStyle.heading1),
          Row(
            children: [
              const Expanded(
                child: RadioWidget(
                  titleRadio: 'Learning',
                  categColor: Colors.green,
                ),
              ),
              Expanded(
                child: RadioWidget(
                  titleRadio: 'Learning',
                  categColor: Colors.blue.shade700,
                ),
              ),
              Expanded(
                child: RadioWidget(
                  titleRadio: 'General',
                  categColor: Colors.amberAccent.shade400,
                ),
              )
            ],
          ),
          const Gap(12),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DateTimeWidget(
                  titleText: 'Date',
                  valueText: 'dd/mm/yyyy',
                  icon: CupertinoIcons.calendar),
              Gap(22),
              DateTimeWidget(
                  titleText: 'Time',
                  valueText: 'hh : mm',
                  icon: CupertinoIcons.clock)
            ],
          ),
          const Gap(12),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue.shade800,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(color: Colors.blue.shade800),
                    padding: const EdgeInsets.symmetric(vertical: 14)
                  ),
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
              ),
              const Gap(10),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade500,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14)
                  ),
                  onPressed: () {},
                  child: const Text('Create'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
