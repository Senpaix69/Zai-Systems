import 'package:flutter/material.dart' show Icons;
import 'package:zaisystems/consts/images.dart';
import 'package:zaisystems/consts/strings.dart';
import 'package:zaisystems/models/experties_item.dart';
import 'package:zaisystems/models/card_item.dart';
import 'package:zaisystems/models/member.dart';
import 'package:zaisystems/models/menu_item.dart';
import 'package:zaisystems/models/slider_item.dart';
import 'package:zaisystems/models/testimonial_item.dart';

const socialIconList = [
  icFacebookLogo,
  icGoogleLogo,
  icAppleLogo,
];

const footerIconList = [
  CardItem("", fbUrl, footerFbLogo),
  CardItem("", instaUrl, footerInstaLogo),
  CardItem("", linkedInUrl, footerLinkedInLogo),
  CardItem("", webUrl, footerWebLogo),
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
  SliderItem(flutter, flutterDesc, imgFlutter),
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

// team members
const teamList = [
  Member(
      name: 'Owais Ahmed Khan',
      position: 'CEO',
      image: owais,
      introduction: "Chief Executive Officer of Zai Systems",
      description:
          "A chief executive officer (CEO) is the highest-ranking executive of a firm. CEOs act as the company's public face and make major corporate decisions.",
      contact: "+923346906960",
      profile:
          "https://www.facebook.com/zaisystems?paipv=0&eav=AfY8FerIphTkdF6U1gcw5SpXWpEET_yups6EeIAuM8C_BP-U5HU003uWYUWbtICGvcY"),
  Member(
    name: 'Abdul Rafay Khan',
    position: 'COO',
    image: rafey,
    introduction: "Chief Operating Officer of Zai Systems",
    description: "Our Expert",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Huzaifa Ali',
    position: 'CTO',
    image: huzaifa,
    introduction: "React developer at Zai Systems",
    description: "React Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Mishal Riasat',
    position: 'Developer',
    image: mishal,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Muhammad Saeed',
    position: 'Developer',
    image: saeed,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Fatima alvi',
    position: 'Developer',
    image: fatima,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Sami Ahmad',
    position: 'Developer',
    image: sami,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'M Furqan Latif',
    position: 'Web Developer',
    image: furqan,
    introduction: "Web developer at Zai Systems",
    description: "Web Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Aiman Atif',
    position: 'Developer',
    image: aiman,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Sameen Fatime',
    position: 'Developer',
    image: sameen,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Soha Fatime',
    position: 'Developer',
    image: soha,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Muhammad Nadeem',
    position: 'Developer',
    image: nadeem,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Rashid Fareed',
    position: 'Developer',
    image: rashid,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Muhammad Saad',
    position: 'Developer',
    image: saad,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Waqas Mughal',
    position: 'Developer',
    image: waqas,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Abdullah Asif',
    position: 'Developer',
    image: abdullah,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Talha Nasir',
    position: 'Developer',
    image: talha,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Kumail Raza',
    position: 'Developer',
    image: kumail,
    introduction: "I am a developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Ubaid Shah Nawaz',
    position: 'Developer',
    image: ubaid,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Usman Sohaib',
    position: 'Graphic Designer',
    image: usman,
    introduction: "Developer at Zai Systems",
    description: "Graphic Designer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Tehseen Ullah',
    position: 'Developer',
    image: tehseen,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Asad',
    position: 'Developer',
    image: asad,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Hussnain Zafar',
    position: 'Developer',
    image: husnain,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Abubakar',
    position: 'Developer',
    image: abubkr,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Malik Usman',
    position: 'Developer',
    image: malik,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Waleed Butt',
    position: 'Developer',
    image: waleed,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Faiq Dogar',
    position: 'Developer',
    image: faiq,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Izzah Malik',
    position: 'SEO Intern',
    image: izzah,
    introduction: "SEO Intern at Zai Systems",
    description: "SEO Intern",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Maniha',
    position: 'Graphic Designer',
    image: maniha,
    introduction: "Graphic Designer at Zai Systems",
    description: "Graphic Designer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Mariyam',
    position: 'Graphic Intern',
    image: mariyam,
    introduction: "Graphic Intern at Zai Systems",
    description: "Graphic Intern",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'M.Irfan',
    position: 'Graphic Intern',
    image: irfan,
    introduction: "Graphic Intern at Zai Systems",
    description: "Graphic Intern",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Momin Mohsin',
    position: 'App Developer Intern',
    image: momin,
    introduction: "App Developer Intern at Zai Systems",
    description: "App Developer Intern",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Muneeb',
    position: 'Graphic Designer',
    image: muneeb,
    introduction: "Graphic Designer at Zai Systems",
    description: "Graphic Designer",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Shehr Bano',
    position: 'Graphic Intern',
    image: sheherbano,
    introduction: "Graphic Intern at Zai Systems",
    description: "Graphic Intern",
    contact: "",
    profile: "",
  ),
];

// HCM 360
const hcmList = [
  CardItem(payrolls, payrollsText, imgPayroll),
  CardItem(attendance, attendanceText, imgAttendance),
  CardItem(letterForms, letterFormsText, imgLetterAndServices),
];

const hcmBtns = [
  payrolls,
  attendance,
  letterForms,
  employeeSelfService,
];

// Payroll
const payrollList = [
  CardItem(customizablePayroll, customizablePayrollDesc, ""),
  CardItem(salaryTransfer, salaryTransferDesc, ""),
  CardItem(bankIntegration, bankIntegrationDesc, ""),
  CardItem(accountantSystem, accountantSystemDesc, ""),
  CardItem(overtime, overtimeDesc, ""),
  CardItem(workDays, workDaysDesc, ""),
];

// Attendance
const attendanceList = [
  CardItem(mobilePunch, mobilePunchDesc, imgMobileAtt),
  CardItem(flexibleWork, flexibleWorkDesc, ""),
  CardItem(fingerPrint, fingerPrintDesc, ""),
  CardItem(workOverTime, workOverTimeDesc, ""),
  CardItem(deviceInt, deviceIntDesc, ""),
];

// LetterForms
const letterFormsList = [
  CardItem(textEditor, textEditorDesc, imgText),
  CardItem(readyToUseForms, readyToUseFormsDesc, imgForms),
  CardItem(unlimitedLetters, unlimitedLettersDesc, imgOfficial),
];

// Contact
const contactList = [
  CardItem(companyEmailText, companyEmail, ""),
  CardItem(infoText, infoEmail, ""),
  CardItem(ceoText, ceoEmail, ""),
  CardItem(hrText, hrEmail, ""),
];
