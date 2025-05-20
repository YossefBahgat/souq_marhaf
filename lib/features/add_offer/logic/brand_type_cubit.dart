import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'brand_type_state.dart';


class AddOfferCubit extends Cubit<AddOfferState> {
  AddOfferCubit() : super(AddOfferInitial());

  String? brand, type, model, region, city;
  List<File> images = [];

  final TextEditingController priceController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  TextEditingController additionalInfoController = TextEditingController();
  TextEditingController subjectController = TextEditingController();


  bool showPrice = true, showPhone = true;

  void togglePriceVisibility(bool v) => showPrice = v;
  void togglePhoneVisibility(bool v) => showPhone = v;

  void selectBrand(String selectedBrand) {
    brand = selectedBrand;
    emit(AddOfferInitial());
  }

  void selectType(String selectedType) {
    type = selectedType;
    emit(AddOfferInitial());
  }


  void selectModel(String selectedModel) {
    model = selectedModel;
    emit(AddOfferInitial());
  }

  void selectRegion(String selectedRegion) {
    region = selectedRegion;
    emit(AddOfferInitial());
  }
  void selectCity( String selectedCity) {
    city = selectedCity;
    emit(AddOfferInitial());
  }

  void addImages(List<File> selectedImages) {
    images = selectedImages;
    emit(AddOfferInitial());
  }


  bool canSubmit() {
    return brand != null &&
        type != null &&
        model != null &&
        region != null &&
        city != null ;
  }

  Future<void> submitOffer() async {
    if (!canSubmit()) {
      emit(const AddOfferFailure("جميع الحقول مطلوبة"));
      return;
    }

    emit(AddOfferLoading());

    try {
      // عملية حفظ البيانات في قاعدة بيانات أو سيرفر
      // مثلاً Firebase Firestore أو أي API

      // تخيل أن الحفظ تم بنجاح:
      await Future.delayed(const Duration(seconds: 2));

      emit(AddOfferSuccess());
    } catch (e) {
      emit(AddOfferFailure(e.toString()));
    }
  }
}
