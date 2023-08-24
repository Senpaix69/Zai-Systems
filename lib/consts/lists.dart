import 'package:flutter/material.dart' show IconData, Icons;
import 'package:zaisystems/consts/images.dart';
import 'package:zaisystems/consts/strings.dart';

const socialIconList = [
  icFacebookLogo,
  icGoogleLogo,
  icAppleLogo,
];

const footerIconList = [
  footerFbLogo,
  footerInstaLogo,
  footerLinkedInLogo,
  footerWebLogo,
];

// for drawer
class MenuItem {
  final String title;
  final IconData icon;
  const MenuItem(this.title, this.icon);
}

List<MenuItem> menuItems = [
  const MenuItem(home, Icons.home),
  const MenuItem(hcm360, Icons.design_services),
  const MenuItem(services, Icons.miscellaneous_services),
  const MenuItem(itTrainig, Icons.my_library_books),
  const MenuItem(team, Icons.group),
  const MenuItem(contactUs, Icons.contact_page),
];

// Slider List
class SliderItem {
  final String title;
  final String text;
  final String image;
  const SliderItem(this.title, this.text, this.image);
}

const sliderList = [
  SliderItem(
    appname,
    "$appname speciality teams create cost-effective innovative custom solutions to meet your challenges",
    slider1,
  ),
  SliderItem(
    hcm360,
    "$appname brings you an all-encompassing, user-friendly, and scalable solution to elevate your HR operations",
    slider2,
  ),
  SliderItem(
    softwareProvide,
    "$appname speciality teams create cost-effective innovative custom solutions to meet your challenges",
    slider3,
  ),
  SliderItem(
    courseProvide,
    "$appname speciality teams create cost-effective innovative custom solutions to meet your challenges",
    slider1,
  ),
];

const servicesList = [
  SliderItem(webAndApp, webDetails, cSlider1),
  SliderItem(ecommerce, ecommerceDetails, cSlider2),
  SliderItem(supportTime, supportDetails, cSlider3),
];

const courseList = [
  SliderItem(angular, angularDesc, imgAngular),
  SliderItem(appDev, appDevDesc, imgAppDev),
  SliderItem(aspNet, aspNetDesc, imgAspNet),
  SliderItem(blockChain, blockchainDesc, imgBlockChain),
  SliderItem(frontendDev, frontendDesc, imgFrontend),
  SliderItem(graphicDesign, graphicDesignDesc, imgGraphics),
  SliderItem(java, javaDesc, imgJava),
  SliderItem(js, jsDesc, imgJs),
  SliderItem(nodeJs, nodeDesc, imgNode),
  SliderItem(python, pythonDesc, imgPython),
  SliderItem(reactJs, reactDesc, imgReact),
  SliderItem(vueJs, vueDesc, imgVue),
  SliderItem(wordpress, wordpressDesc, imgWordpress),
];

const hcmBtns = [
  payrolls,
  attendance,
  letterForms,
  allSolutions,
];

class ExpertiesItem {
  final double ratio;
  final String percent;
  final String title;

  const ExpertiesItem({
    required this.ratio,
    required this.percent,
    required this.title,
  });
}

const expertiesList = [
  ExpertiesItem(ratio: 0.85, percent: "85%", title: "Design"),
  ExpertiesItem(ratio: 0.90, percent: "90%", title: "Managed Service"),
  ExpertiesItem(ratio: 0.70, percent: "70%", title: "Application"),
  ExpertiesItem(ratio: 0.95, percent: "95%", title: "Development"),
];

// Testimonials
class TestimonialItem {
  final String name;
  final String image;
  final String country;
  final String position;
  final String feedback;

  const TestimonialItem({
    required this.name,
    required this.image,
    required this.country,
    required this.feedback,
    required this.position,
  });
}

const testimonialsList = [
  TestimonialItem(
    name: polName,
    image: chandra,
    country: polCountry,
    position: polPosition,
    feedback: polDetails,
  ),
  TestimonialItem(
    name: gerName,
    image: ryan,
    country: gerCountry,
    position: gerPosition,
    feedback: gerDetails,
  ),
  TestimonialItem(
    name: usName,
    image: jason,
    country: usCountry,
    position: usPosition,
    feedback: usDetails,
  ),
];
