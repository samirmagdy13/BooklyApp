import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../view_model/seach_view_cubit/seach_view_cubit.dart';

class CustomTtextField extends StatelessWidget {
  const CustomTtextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(

      onSubmitted: (value) {
        BlocProvider.of<SeachViewCubit>(context)
            .fetchSearchViewBooks(searchName: value);
      },
      decoration: InputDecoration(
        labelText: 'Search',
        hintText: 'Enter Search Name',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
            color: Colors.grey,
          ),
        ),
        border: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(Colors.teal),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
