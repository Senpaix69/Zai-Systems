import 'package:flutter/material.dart' show Icons;
import 'package:zaisystems/consts/images.dart';
import 'package:zaisystems/consts/pdfs.dart';
import 'package:zaisystems/consts/strings.dart';
import 'package:zaisystems/models/experties_item.dart';
import 'package:zaisystems/models/card_item.dart';
import 'package:zaisystems/models/member.dart';
import 'package:zaisystems/models/menu_item.dart';
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
  CardItem(
    appname,
    "$appname speciality teams create cost-effective innovative custom solutions to meet your challenges",
    slider1,
  ),
  CardItem(
    hcm360,
    "$appname brings you an all-encompassing, user-friendly, and scalable solution to elevate your HR operations",
    imgHcm360,
  ),
  CardItem(
    softwareProvide,
    "$appname speciality teams create cost-effective innovative custom solutions to meet your challenges",
    slider3,
  ),
  CardItem(
    courseProvide,
    "$appname speciality teams create cost-effective innovative custom solutions to meet your challenges",
    slider1,
  ),
];

const servicesList = [
  CardItem(webAndApp, webDetails, imgBanner),
  CardItem(ecommerce, ecommerceDetails, imgBanner2),
  CardItem(supportTime, supportDetails, imgBanner3),
];

const courseList = [
  CardItem(appDev, appDevDesc, imgAppDev),
  CardItem(aspNet, aspNetDesc, imgAspNet),
  CardItem(blockChain, blockchainDesc, imgBlockChain),
  CardItem(frontendDev, frontendDesc, imgFrontend),
  CardItem(graphicDesign, graphicDesignDesc, imgGraphics),
  CardItem(java, javaDesc, imgJava),
  CardItem(js, jsDesc, imgJs),
  CardItem(nodeJs, nodeDesc, imgNode),
  CardItem(python, pythonDesc, imgPython),
  CardItem(reactJs, reactDesc, imgReact),
  CardItem(vueJs, vueDesc, imgVue),
  CardItem(wordpress, wordpressDesc, imgWordpress),
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
      name: 'Owais Ahmad Khan',
      position: 'Founder / CEO',
      image: owais,
      introduction: "Chief Executive Officer of Zai Systems",
      description:
          "A chief executive officer (CEO) is the highest-ranking executive of a firm. CEOs act as the company's public face and make major corporate decisions.",
      contact: ceoNumber,
      profile:
          "https://www.facebook.com/zaisystems?paipv=0&eav=AfY8FerIphTkdF6U1gcw5SpXWpEET_yups6EeIAuM8C_BP-U5HU003uWYUWbtICGvcY"),
  Member(
    name: 'Abdul Rafay Ahmad',
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
    profile: "https://www.linkedin.com/in/huzaifa-ali07/",
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
    profile: "https://www.linkedin.com/in/izzahmalik",
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
    profile: "https://www.linkedin.com/in/syeda-shehar-bano-455013220",
  ),
  Member(
    name: 'Hareem',
    position: 'Graphics Lead',
    image: hareem,
    introduction: "Graphics Lead at Zai Systems",
    description: "Graphics Lead",
    contact: "",
    profile: "",
  ),
  Member(
    name: 'Babar Arif',
    position: 'Flutter Developer',
    image: babar,
    introduction: "Flutter Developer at Zai Systems",
    description: "Flutter Developer",
    contact: "",
    profile: "https://www.linkedin.com/in/babar-arif/",
  ),
];

// HCM 360
const hcmList = [
  CardItem(payrolls, payrollsText, imgPayroll),
  CardItem(attendance, attendanceText, imgAttendance),
  CardItem(letterForms, letterFormsText, imgLetterAndServices),
  CardItem(leaveMgmt, leaveMgmtText, imgAttendance),
  CardItem(selfService, selfServiceText, imgAttendance),
  CardItem(performanceEvaluation, performanceEvaluationText, imgAttendance),
  CardItem(jobPortal, jobPortalText, imgAttendance),
  CardItem(taskMgmt, taskMgmtText, imgAttendance),
  CardItem(loansMgmt, loansMgmtText, imgAttendance),
  CardItem(tracking, trackingText, imgAttendance),
  CardItem(custodyMgmt, custodyMgmtText, imgAttendance),
  CardItem(notice, noticeText, imgAttendance),
  CardItem(approvals, approvalsText, imgAttendance),
  CardItem(memo, memoText, imgAttendance),
  CardItem(decision, decisionText, imgAttendance),
  CardItem(endOfService, endOfServiceText, imgAttendance),
  CardItem(dashboard, dashboardText, imgAttendance),
  CardItem(rules, rulesText, imgAttendance),
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

// PDF LISTS
const pdfLists = [
  CardItem(graphicsPdf, "", pdfGraphics),
  CardItem(companyProfilePdf, "", pdfCompanyProfile),
  CardItem(fullStackDevPdf, "", pdfFullStackWeb),
  CardItem(companyServicesPdf, "", pdfServices),
  CardItem(graphicsPdf, "", pdfGraphics),
  CardItem(companyProfilePdf, "", pdfCompanyProfile),
  CardItem(fullStackDevPdf, "", pdfFullStackWeb),
  CardItem(companyServicesPdf, "", pdfServices),
  CardItem(graphicsPdf, "", pdfGraphics),
  CardItem(companyProfilePdf, "", pdfCompanyProfile),
  CardItem(fullStackDevPdf, "", pdfFullStackWeb),
  CardItem(companyServicesPdf, "", pdfServices),
];

// Services
const servicesLists = [
  CardItem(userExp, userExpDesc, imgUserExp),
  CardItem(manageCloudService, manageCloudServiceDesc, imgManagedCloud),
  CardItem(devOps, devOpsDesc, imgDevOps),
  CardItem(webAndMobile, webAndMobileDesc, imgWebMobile),
  CardItem(ecommerce, ecommerceDesc, imgEcommerce),
  CardItem(bespokItSolutions, bespokItSolutionsDesc, imgBespoke),
  CardItem(dataAnalytics, dataAnalyticsDesc, imgDataAnalytics),
  CardItem(
    businessIntelligence,
    businessIntelligenceDesc,
    imgBusinessIntelligence,
  ),
  CardItem(infoStrategy, infoStrategyDesc, imgInformation),
];

// More Services
const stdApproachList = [
  CardItem(discussion, discussionDesc, ""),
  CardItem(conceptInit, conceptInitDesc, ""),
  CardItem(testingTrying, testingTryingDesc, ""),
  CardItem(execInstall, execInstallDesc, ""),
];

const sdpServiceList = [
  CardItem(topRatedDA, topRatedDADesc, imgTopRated),
  CardItem(certifiedWeb, certifiedWebDesc, imgCertifiedWeb),
  CardItem(supportTime, supportTimeDesc, imgSupportTime),
  CardItem(affordablePrice, affordablePriceDesc, imgAffordablePrice),
  CardItem(abilityToLoad, abilityToLoadDesc, imgAbilityLoad),
  CardItem(provenCodeStd, provenCodeStdDesc, imgProvenCodeStd),
];
