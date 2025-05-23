import 'package:flutter/material.dart';
import '../../user/components/custom_top_curve.dart';
import '../components/register_category_form.dart';
import '../models/category.dart';

class RegisterCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category?;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTopCurve(
                label: category != null ? "Editar Categoria" : "Nova Categoria",
              ),
              SizedBox(height: 2),
              RegisterFormCategory(category: category),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
