import 'package:flutter/material.dart';
import 'package:wavebitex/data/core/local/african_country_list.dart';
import 'package:wavebitex/widgets/action_button.dart';
import 'package:wavebitex/widgets/form_widgets/app_drop_down_field.dart';
import 'package:wavebitex/widgets/form_widgets/app_text_field.dart';
import 'package:date_time_picker/date_time_picker.dart';

class PersonalInfoKyc extends StatelessWidget {
  const PersonalInfoKyc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey();
    const List<String> workStatusList = ["Employed", "Un Employed", "Self Employed", "Trader"];
    Widget _spacer = SizedBox(height: 20);

    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Personal information',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black.withOpacity(0.5)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        height: _size.height,
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _spacer,
              _spacer,
              _spacer,
              AppTextField(title: 'Full name'),
              _spacer,
               AppDropDwonField(
                items: africanCountriesList,
                hint: "Nationality",
              ),
              _spacer,
                  DateTimePicker(
                firstDate: DateTime(1960),
                lastDate: DateTime(2100),
                dateLabelText: 'Date of birth',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              _spacer,
              AppDropDwonField(
                items: workStatusList,
                hint: "Work Status",
              ),
          
              _spacer,
              ActionButton(title: "Submit", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
