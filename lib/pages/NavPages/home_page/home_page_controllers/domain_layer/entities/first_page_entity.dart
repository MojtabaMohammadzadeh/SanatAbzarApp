

import 'package:equatable/equatable.dart';

import '../../data_layer/models/first_page_model.dart';

class FirstPageEntities extends Equatable{
  final int? success;
  final int? error;
  final int? errorCode;
  final String? msg;
  // final List<dynamic>? suggestion;
  final String? baseUrlSite;
  final String? versionApp;
  final String? linkApp;
  final String? instituteTell;
  final String? addressContact;
  final String? emailContact;
  final String? aboutUs;
  final String? instagram;
  final String? telegram;
  final String? googlePlus;
  final String? tweeter;
  final String? whatsapp;
  final String? newVersionText;
  final String? msgShareReagent;
  final String? law;
  final int? statusDeviceId;
  final String? userPhone;
  final int? isActive;
  final int? messageCount;
  final String? smsCode;
  final int? maxUploadImgPlaces;
  final List<NewBrands>? newBrands;
  final List<MostBrands>? mostBrands;
  final List<Banners>? banners;
  final List<AllBrands>? allBrands;
  final String? todayDate;


  const FirstPageEntities({
      this.success,
      this.error,
      this.errorCode,
      this.msg,
      // this.suggestion,
      this.baseUrlSite,
      this.versionApp,
      this.linkApp,
      this.instituteTell,
      this.addressContact,
      this.emailContact,
      this.aboutUs,
      this.instagram,
      this.telegram,
      this.googlePlus,
      this.tweeter,
      this.whatsapp,
      this.newVersionText,
      this.msgShareReagent,
      this.law,
      this.statusDeviceId,
      this.userPhone,
      this.isActive,
      this.messageCount,
      this.smsCode,
      this.maxUploadImgPlaces,
      this.newBrands,
      this.mostBrands,
      this.banners,
      this.allBrands,
      this.todayDate});

  @override
  // TODO: implement props
  List<Object?> get props =>[
    newBrands,
    mostBrands,
    allBrands,
    banners,
  ];

}