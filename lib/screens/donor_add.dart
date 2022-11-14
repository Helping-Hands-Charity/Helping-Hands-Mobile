import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helpinghands/controller/data_controller.dart';
import 'package:helpinghands/screens/all_charities.dart';
import 'package:helpinghands/widgets/btn_widgets.dart';
import 'package:helpinghands/widgets/error_warning_ms.dart';
import 'package:helpinghands/widgets/textfield_widget.dart';
import 'package:get/get.dart';

class DonorAdd extends StatelessWidget {
  const DonorAdd({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();

    bool _dataValidation() {
      if (nameController.text.trim() == '') {
        Message.charityErrorOrWarning(
            "Donation Name", "Donation name is empty");

        return false;
      } else if (detailController.text.trim() == '') {
        Message.charityErrorOrWarning(
            "Donation Detail", "Donation detail is empty");
        return false;
      } else if (nameController.text.length <= 10) {
        Message.charityErrorOrWarning(
            "Donation Name", "Donation name should be at least 10 characters");
        return false;
      } else if (detailController.text.length <= 10) {
        Message.charityErrorOrWarning("Charity Detail",
            "Donation detail should be at least 20 characters");
        return false;
      }
      return true;
    }

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("img/addDonor.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 40,
                ),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.black54),
                )
              ],
            ),
            Column(
              children: [
                TextFieldWidget(
                  textController: nameController,
                  hintText: "Donation Title",
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldWidget(
                  textController: detailController,
                  hintText: "Donation Details",
                  borderRadius: 15,
                  maxLines: 3,
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    if (_dataValidation()) {
                      Get.find<DataController>().postData(
                          nameController.text.trim(),
                          detailController.text.trim());

                      Get.to(() => AllCharities(),
                          transition: Transition.circularReveal);
                    }
                  },
                  child: ButtonWidgets(
                      backgroundcolor: Colors.black54,
                      text: "Add",
                      textColor: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            )
          ],
        ),
      ),
    );
  }
}
