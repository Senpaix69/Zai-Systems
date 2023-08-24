import 'package:flutter/material.dart' show Icons;
import 'package:zaisystems/consts/images.dart';
import 'package:zaisystems/consts/strings.dart';
import 'package:zaisystems/models/experties_item.dart';
import 'package:zaisystems/models/menu_item.dart';
import 'package:zaisystems/models/slider_item.dart';
import 'package:zaisystems/models/testimonial_item.dart';

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
List<MenuItem> menuItems = [
  const MenuItem(home, Icons.home),
  const MenuItem(hcm360, Icons.design_services),
  const MenuItem(services, Icons.miscellaneous_services),
  const MenuItem(itTrainig, Icons.my_library_books),
  const MenuItem(team, Icons.group),
  const MenuItem(contactUs, Icons.contact_page),
];

// Slider List
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

const expertiesList = [
  ExpertiesItem(ratio: 0.85, percent: "85%", title: "Design"),
  ExpertiesItem(ratio: 0.90, percent: "90%", title: "Managed Service"),
  ExpertiesItem(ratio: 0.70, percent: "70%", title: "Application"),
  ExpertiesItem(ratio: 0.95, percent: "95%", title: "Development"),
];

// Testimonials
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
