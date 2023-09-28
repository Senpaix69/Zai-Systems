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
          "Boasting over 15 years of experience across esteemed firms, our CEO, Owais Ahmad Khan, showcases remarkable organizational leadership abilities and an entrepreneurial outlook. His adept management extends to efficiently overseeing and managing all organizational affairs.",
      profile:
          "https://www.facebook.com/zaisystems?paipv=0&eav=AfY8FerIphTkdF6U1gcw5SpXWpEET_yups6EeIAuM8C_BP-U5HU003uWYUWbtICGvcY"),
  Member(
    name: 'Abdul Rafay Ahmad',
    position: 'COO',
    image: rafey,
    introduction: "Chief Operating Officer of Zai Systems",
    description:
        "Sir Abdul Rafay, our accomplished COO, possesses outstanding leadership acumen. He oversees and guides team performance on a daily basis, with his wealth of experience, skills, and achievements significantly contributing to the success of the organization.",
    profile: "",
  ),
  Member(
    name: 'Huzaifa Ali',
    position: 'CTO',
    image: huzaifa,
    introduction: "React developer at Zai Systems",
    description:
        "Meet our visionary CTO Sir Huzaifa Ali, guiding us through the tech frontier, and our ingenious Web Lead, weaving digital wonders into reality.",
    profile: "https://www.linkedin.com/in/huzaifa-ali07/",
  ),
  Member(
    name: 'Mishal Riasat',
    position: 'Developer',
    image: mishal,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Muhammad Saeed',
    position: 'Developer',
    image: saeed,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Fatima alvi',
    position: 'Developer',
    image: fatima,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Sami Ahmad',
    position: 'Developer',
    image: sami,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'M Furqan Latif',
    position: 'Web Developer',
    image: furqan,
    introduction: "Web developer at Zai Systems",
    description: "Web Developer",
    profile: "",
  ),
  Member(
    name: 'Sameen Fatime',
    position: 'Developer',
    image: sameen,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Soha Fatime',
    position: 'Developer',
    image: soha,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Muhammad Nadeem',
    position: 'Developer',
    image: nadeem,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Rashid Fareed',
    position: 'Developer',
    image: rashid,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Muhammad Saad',
    position: 'Developer',
    image: saad,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Waqas Mughal',
    position: 'Developer',
    image: waqas,
    introduction: "Developer at Zai Systems",
    description:
        "Accumulating over 12 years of experience, Sir Waqas Mughal has consistently excelled as an exemplary SEO team leader. Beyond his proficiency in digital marketing practices, he ensures adept guidance for his team, effectively incorporating new strategies.",
    profile: "",
  ),
  Member(
    name: 'Abdullah Asif',
    position: 'Developer',
    image: abdullah,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Talha Nasir',
    position: 'Developer',
    image: talha,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Kumail Raza',
    position: 'Developer',
    image: kumail,
    introduction: "I am a developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Ubaid Shah Nawaz',
    position: 'Developer',
    image: ubaid,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Usman Sohaib',
    position: 'Graphic Designer',
    image: usman,
    introduction: "Developer at Zai Systems",
    description: "Graphic Designer",
    profile: "",
  ),
  Member(
    name: 'Tehseen Ullah',
    position: 'Developer',
    image: tehseen,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Asad',
    position: 'Developer',
    image: asad,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Hussnain Zafar',
    position: 'Developer',
    image: husnain,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Abubakar',
    position: 'Developer',
    image: abubkr,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Malik Usman',
    position: 'Developer',
    image: malik,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Waleed Butt',
    position: 'Developer',
    image: waleed,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Faiq Dogar',
    position: 'Developer',
    image: faiq,
    introduction: "Developer at Zai Systems",
    description: "Developer",
    profile: "",
  ),
  Member(
    name: 'Izzah Malik',
    position: 'SEO Intern',
    image: izzah,
    introduction: "SEO Intern at Zai Systems",
    description:
        "Izzah Malik, a dedicated and adept SEO specialist at Zai Systems, consistently offers her expertise in providing valuable SEO services for business.",
    profile: "https://www.linkedin.com/in/izzahmalik",
  ),
  Member(
    name: 'Maniha',
    position: 'Graphic Designer',
    image: maniha,
    introduction: "Graphic Designer at Zai Systems",
    description:
        "Our graphic designer Maniha Noor is a hard working and dedicated employee.She creates designs deligently and her work is always appreciable.",
    profile: "",
  ),
  Member(
    name: 'Mariyam',
    position: 'Graphic Intern',
    image: mariyam,
    introduction: "Graphic Intern at Zai Systems",
    description: "Graphic Intern",
    profile: "",
  ),
  Member(
    name: 'M.Irfan',
    position: 'Graphic Intern',
    image: irfan,
    introduction: "Graphic Intern at Zai Systems",
    description: "Graphic Intern",
    profile: "",
  ),
  Member(
    name: 'Momin Mohsin',
    position: 'App Developer Intern',
    image: momin,
    introduction: "App Developer Intern at Zai Systems",
    description: "App Developer Intern",
    profile: "",
  ),
  Member(
    name: 'Muneeb',
    position: 'Graphic Designer',
    image: muneeb,
    introduction: "Graphic Designer at Zai Systems",
    description:
        "Müneeb Naveed, our skilled graphic designer, incorporates dynamic spark effects into his illustrations and graphics, consistently earning admiration for his high-quality creations.",
    profile: "",
  ),
  Member(
    name: 'Shehr Bano',
    position: 'Graphic Intern',
    image: sheherbano,
    introduction: "Graphic Intern at Zai Systems",
    description: "Graphic Intern",
    profile: "https://www.linkedin.com/in/syeda-shehar-bano-455013220",
  ),
  Member(
    name: 'Hareem',
    position: 'Graphics Designer/Video Editor (Team Lead)',
    image: hareem,
    introduction: "Graphics Lead at Zai Systems",
    description:
        "Having accumulated 2 years of experience, Miss Hareem Junaid stands as a committed and enthusiastic graphic designer and video editor (also serving as a team lead) at Zai Systems. Her exceptional artistic prowess, along with her role as a managerial figure, quality of her work and her leadership persona.",
    profile: "",
  ),
  Member(
    name: 'Babar Arif',
    position: 'Mobile App Developer',
    image: babar,
    introduction: "Mobile App Developer at Zai Systems",
    description:
        "Our Mobile App Developer Babar Arif devotes his development skills efficiently. We are glad to have him as a great employee.",
    profile: "https://www.linkedin.com/in/babar-arif/",
  ),
  Member(
    name: 'Huraira Younas',
    position: 'Mobile App Developer',
    image: huraira,
    introduction: "Mobile App Developer at Zai Systems",
    description:
        "Huraira Younas serves as a mobile app developer at Zai Systems. The skills he exhibits in app development, coupled with his unwavering dedication, bring us immense satisfaction.",
    profile: "https://www.linkedin.com/in/hurairayounas",
  ),
  Member(
    name: 'Ali Shoaib',
    position: 'Graphic Designer',
    image: alishoaib,
    introduction: "Graphic Designer at Zai Systems",
    description:
        "Ali Shoaib, an immensely passionate and industrious graphic designer, channels his dedication into his designs, establishing himself as a standout contributor at Zai Systems.",
    profile: "",
  ),
  Member(
    name: 'Mariyam Ishfaq',
    position: 'Graphic Designer',
    image: ishfaq,
    introduction: "Graphic Designer at Zai Systems",
    description:
        "Mariyam Ishfaq, a remarkable graphic designer at Zai Systems, demonstrates unwavering dedication to enhancing her design skills through diligent effort.",
    profile: "",
  ),
  Member(
    name: 'Muhammad Irfan',
    position: 'Graphic Designer',
    image: mirfan,
    introduction: "Graphic Designer at Zai Systems",
    description:
        "Muhammad Irfan, a Passionate Graphic Designer, who loves to put hard work in his graphic designing skills.",
    profile: "",
  ),
  Member(
    name: 'Usman Bin Shoaib',
    position: 'Senior Graphic Designer',
    image: shoaib,
    introduction: "Senior Graphic Designer at Zai Systems",
    description:
        "Our Sr. Graphic Designer Manager, Sir. Usman Bin Sohaib, consistently lends his expertise and skills to benefit our team. His approach and achievements serve as a significant wellspring of inspiration for our fellow graphic designers.",
    profile: "",
  ),
];

// HCM 360
const hcmList = [
  CardItem(payrolls, payrollsText, imgPayroll),
  CardItem(attendance, attendanceText, imgAttendance),
  CardItem(letterForms, letterFormsText, imgLetterAndServices),
  CardItem(leaveMgmt, leaveMgmtText, imgleaveMgmt),
  CardItem(selfService, selfServiceText, imgselfService),
  CardItem(performanceEvaluation, performanceEvaluationText,
      imgperformanceEvaluation),
  CardItem(jobPortal, jobPortalText, imgjobPotal),
  CardItem(taskMgmt, taskMgmtText, imgtaskMgmt),
  CardItem(loansMgmt, loansMgmtText, imgloansMgmt),
  CardItem(tracking, trackingText, imgtracking),
  CardItem(custodyMgmt, custodyMgmtText, imgcustodyMgmt),
  CardItem(notice, noticeText, imgnotice),
  CardItem(approvals, approvalsText, imgapprovals),
  CardItem(memo, memoText, imgmemo),
  CardItem(decision, decisionText, imgdecision),
  CardItem(endOfService, endOfServiceText, imgendOfService),
  CardItem(dashboard, dashboardText, imgdashboard),
  CardItem(rules, rulesText, imgrules),
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
  CardItem(enterpriseDev, enterpriseDevDesc, imgEnterpriseDev),
  CardItem(customDev, customDevDesc, imgCustomDev),
  CardItem(swProductDev, swProductDevDesc, imgSwProductDev),
  CardItem(swProjMgmt, swProjMgmtDesc, imgSwProjMgmt),
  CardItem(qualityAssurance, qualityAssuranceDesc, imgQualityAssurance),
  CardItem(blockChain, blockChainDesc, imgBlockchain),
  CardItem(artificialIntelligence, artificialIntelligenceDesc,
      imgArtificialIntelligence),
  CardItem(staffAug, staffAugDesc, imgStaffAug),
  CardItem(icoMarketing, icoMarketingDesc, imgIcoMarketing),
  CardItem(digMarketing, digMarketingDesc, imgDigMarketing),
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
