import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileView(),
      web: WebView(),
    );
  }
}

//MOBILE VIEW
class MobileView extends StatefulWidget {
  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  _makingPhoneCall() async {
    const url = 'tel:8849273553';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  var _instaUrl = 'https://www.instagram.com/kev_gadhiya2011/';
  var _dribbleUrl = 'https://dribbble.com/ZeusGod/';
  var _behanceUrl = 'https://www.behance.net/kevalgadhiya';
  var _githubUrl = 'https://github.com/keval-gadhiya/';
  var _linkedinUrl = 'https://www.linkedin.com/in/keval-gadhiya-644587160/';
  var _whatsappUrl = 'https://wa.me/+918849273553/';

  TextEditingController fName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController projectType = TextEditingController();
  TextEditingController budget = TextEditingController();
  TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Portfolio",
          style: GoogleFonts.lato(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //IMAGE
              Container(
                height: 444,
                width: double.infinity,
                color: Colors.black,
                child: Image.asset(
                  "assets/images/keval.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 30),

              //EMAIL TEXT AND ICONS
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email me: kevalgadhiya2005@gmail.com",
                    style: GoogleFonts.ptMono(
                      fontSize: MediaQuery.of(context).size.height * .019,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Call me : +91 884-927-3553",
                    style: GoogleFonts.ptMono(
                      fontSize: MediaQuery.of(context).size.height * .019,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Location : Bangalore, India",
                    style: GoogleFonts.ptMono(
                      fontSize: MediaQuery.of(context).size.height * .019,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            return _launchDribbleURL();
                          },
                          child: SvgPicture.asset("assets/svg/dribbble.svg")),
                      InkWell(
                          onTap: () {
                            return _launchBehanceURL();
                          },
                          child: SvgPicture.asset("assets/svg/behance.svg")),
                      InkWell(
                          onTap: () {
                            return _launchGithubURL();
                          },
                          child: SvgPicture.asset("assets/svg/github.svg")),
                      InkWell(
                          onTap: () {
                            return _launchLinkedinURL();
                          },
                          child: SvgPicture.asset("assets/svg/linked.svg")),
                      InkWell(
                          onTap: () {
                            return _launchInstaURL();
                          },
                          child: SvgPicture.asset("assets/svg/instagram.svg")),
                      InkWell(
                          onTap: () {
                            return _launchWhatsappURL();
                          },
                          child: SvgPicture.asset("assets/svg/whatsapp.svg")),
                    ],
                  ),
                  SizedBox(height: 24),
                ],
              ),

              //INTRO TEXT
              RichText(
                text: TextSpan(
                  text: "Hi there! ✋ My name is ",
                  style: GoogleFonts.lato(
                    fontSize: MediaQuery.of(context).size.height * .023,
                    color: Colors.black,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: "Keval Gadhiya. ",
                      style: GoogleFonts.lato(
                        fontSize: MediaQuery.of(context).size.height * .023,
                        color: Colors.black,
                        height: 1.5,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: "I’m a ",
                      style: GoogleFonts.lato(
                        fontSize: MediaQuery.of(context).size.height * .023,
                        color: Colors.black,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: "Junior UI/UX Designer & Flutter Designer ",
                      style: GoogleFonts.lato(
                        fontSize: MediaQuery.of(context).size.height * .023,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: "in Australia, Queensland.",
                      style: GoogleFonts.lato(
                        fontSize: MediaQuery.of(context).size.height * .023,
                        color: Colors.black,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18),
              Text(
                "I am born in the town of Savar Kundla. My objective is to obtain a position in a professional environment where I can solve any creative problems and lean my skill with a growing company to achieve optimum utilisation of its resources.",
                style: GoogleFonts.ptMono(
                  fontSize: MediaQuery.of(context).size.height * .016,
                  color: Colors.black,
                  height: 1.6,
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //DOWNLOAD CV BTN
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * .06,
                      width: MediaQuery.of(context).size.width * .42,
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "Download CV",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .022,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  //CONTACT ME BTN
                  InkWell(
                    onTap: _makingPhoneCall,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                      ),
                      height: MediaQuery.of(context).size.height * .06,
                      width: MediaQuery.of(context).size.width * .42,
                      child: Text(
                        "Contact Me",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .022,
                          color: Theme.of(context).primaryColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),

              //TOOLS
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                color: Color(0xffE0E3D9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //XD
                    Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/images/xd.png"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Adobe XD".toUpperCase(),
                          style: GoogleFonts.ptMono(
                            fontSize: MediaQuery.of(context).size.height * .019,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    //FIGMA
                    Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/images/figma.png"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "figma".toUpperCase(),
                          style: GoogleFonts.ptMono(
                            fontSize: MediaQuery.of(context).size.height * .019,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    //VS STUDIO
                    Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/images/vs.png"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "VS studio".toUpperCase(),
                          style: GoogleFonts.ptMono(
                            fontSize: MediaQuery.of(context).size.height * .019,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              //SKILLS
              Text(
                "Main Skills",
                style: GoogleFonts.lato(
                  fontSize: MediaQuery.of(context).size.height * .028,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Divider(
                thickness: 2,
                color: Colors.black12,
              ),
              SizedBox(height: 16),
              Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo",
                style: GoogleFonts.ptMono(
                  fontSize: MediaQuery.of(context).size.height * .018,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 24),
              Column(
                children: [
                  //PROTOTYPING
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Prototyping",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .018,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "78%",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .018,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Stack(
                    children: [
                      Container(
                        height: 10,
                        width: double.infinity,
                        color: Theme.of(context).primaryColor.withOpacity(.2),
                      ),
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width * .78,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 18),

                  //WIREFRAMING
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Wireframing",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .018,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "83%",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .018,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Stack(
                    children: [
                      Container(
                        height: 10,
                        width: double.infinity,
                        color: Theme.of(context).primaryColor.withOpacity(.2),
                      ),
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width * .83,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 18),

                  //FLUTTER UI
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Flutter Ui",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .018,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "95%",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .018,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Stack(
                    children: [
                      Container(
                        height: 10,
                        width: double.infinity,
                        color: Theme.of(context).primaryColor.withOpacity(.2),
                      ),
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width * .95,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 18),

                  //APP DESIGN
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "App designing",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .018,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "100%",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .018,
                          color: Colors.black,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Stack(
                    children: [
                      Container(
                        height: 10,
                        width: double.infinity,
                        color: Theme.of(context).primaryColor.withOpacity(.2),
                      ),
                      Container(
                        height: 10,
                        width: double.infinity,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 18),

                  //WEB DESIGN
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Web designing",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .018,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "100%",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .018,
                          color: Colors.black,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Stack(
                    children: [
                      Container(
                        height: 10,
                        width: double.infinity,
                        color: Theme.of(context).primaryColor.withOpacity(.2),
                      ),
                      Container(
                        height: 10,
                        width: double.infinity,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),

              //EXPERIANCE
              Text(
                "Experinece",
                style: GoogleFonts.lato(
                  fontSize: MediaQuery.of(context).size.height * .028,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Divider(
                thickness: 2,
                color: Colors.black12,
              ),
              SizedBox(height: 16),
              //2021 - PRESENT
              Text(
                "2021 - present",
                style: GoogleFonts.ptMono(
                  fontSize: MediaQuery.of(context).size.height * .018,
                  color: Color(0xff9EA295),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Junior UI/UX Designer & Flutter Designer",
                style: GoogleFonts.lato(
                  fontSize: MediaQuery.of(context).size.height * .022,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "eThink Solution - Australia",
                style: GoogleFonts.lato(
                  fontSize: MediaQuery.of(context).size.height * .022,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "My job is to make Web or App-based designs for the client and to fulfil their needs.\n\nConvert that design into real App\n\nCoding for Web design and App design in Flutter",
                style: GoogleFonts.ptMono(
                  fontSize: MediaQuery.of(context).size.height * .022,
                  color: Colors.black,
                  height: 1.4,
                ),
              ),
              SizedBox(height: 16),

              //2020 - 2021
              Text(
                "2020 - 2021",
                style: GoogleFonts.ptMono(
                  fontSize: MediaQuery.of(context).size.height * .018,
                  color: Color(0xff9EA295),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "UI/UX Designer",
                style: GoogleFonts.lato(
                  fontSize: MediaQuery.of(context).size.height * .022,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "GoProtoz Design Studio - Bangalore",
                style: GoogleFonts.lato(
                  fontSize: MediaQuery.of(context).size.height * .022,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "My job is to make Web or App-based designs for the client and to fulfil their needs.\n\nDo some User Research for better User Experience and make user feel easy.\n\nWireframing is like making a blue print of the app or website.\n\nPrototyping make user feel the app/website real and can move any were is design.",
                style: GoogleFonts.ptMono(
                  fontSize: MediaQuery.of(context).size.height * .022,
                  color: Colors.black,
                  height: 1.4,
                ),
              ),
              SizedBox(height: 24),

              //PROJECT
              Text(
                "Project",
                style: GoogleFonts.lato(
                  fontSize: MediaQuery.of(context).size.height * .028,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Divider(
                thickness: 2,
                color: Colors.black12,
              ),
              SizedBox(height: 16),
              Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      child: Image.asset("assets/images/mycare.png"),
                    ),
                    SizedBox(width: 16),
                    Container(
                      width: 160.0,
                      child: Image.asset("assets/images/netspirit.png"),
                    ),
                    SizedBox(width: 16),
                    Container(
                      width: 160.0,
                      child: Image.asset("assets/images/gofumi8.png"),
                    ),
                    SizedBox(width: 16),
                    Container(
                      width: 160.0,
                      child: Image.asset("assets/images/xtra.png"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),

              //QUOTES
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "Never Stop Learning",
                      style: GoogleFonts.lato(
                        fontSize: MediaQuery.of(context).size.height * .028,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, right: 6),
                      child: Text(
                        "If your actions inspire others to dream more, learn more, do more and become more, you are a leader.” ",
                        style: GoogleFonts.ptMono(
                          fontSize: MediaQuery.of(context).size.height * .016,
                          color: Colors.black,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            "John Quincy Adams",
                            style: GoogleFonts.lato(
                              fontSize:
                                  MediaQuery.of(context).size.height * .016,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              SizedBox(height: 24),

              //LETS CONNECT
              Text(
                "Let’s work together",
                style: GoogleFonts.lato(
                  fontSize: MediaQuery.of(context).size.height * .028,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Divider(
                thickness: 2,
                color: Colors.black12,
              ),
              SizedBox(height: 16),

              //FULL NAME
              Container(
                child: Text(
                  "Full Name",
                  style: GoogleFonts.ptMono(
                    fontSize: MediaQuery.of(context).size.height * .018,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: fName,
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Color(0xffE0E3D9),
                  filled: true,
                  counterText: '',
                  border: InputBorder.none,
                  hintText: "Full Name",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  hintStyle: GoogleFonts.lato(
                    color: Colors.black26,
                    fontSize: 16,
                  ),
                ),
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),

              //EMAIL
              Container(
                child: Text(
                  "Email",
                  style: GoogleFonts.ptMono(
                    fontSize: MediaQuery.of(context).size.height * .018,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: email,
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Color(0xffE0E3D9),
                  filled: true,
                  counterText: '',
                  border: InputBorder.none,
                  hintText: "Full Name",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  hintStyle: GoogleFonts.lato(
                    color: Colors.black26,
                    fontSize: 16,
                  ),
                ),
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),

              //PROJECT TYPE
              Container(
                child: Text(
                  "Project Type",
                  style: GoogleFonts.ptMono(
                    fontSize: MediaQuery.of(context).size.height * .018,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: projectType,
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Color(0xffE0E3D9),
                  filled: true,
                  counterText: '',
                  border: InputBorder.none,
                  hintText: "Website Design or Application Design",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  hintStyle: GoogleFonts.lato(
                    color: Colors.black26,
                    fontSize: 16,
                  ),
                ),
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),

              //BUDGET
              Container(
                child: Text(
                  "Budget (INR)",
                  style: GoogleFonts.ptMono(
                    fontSize: MediaQuery.of(context).size.height * .018,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: budget,
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Color(0xffE0E3D9),
                  filled: true,
                  counterText: '',
                  border: InputBorder.none,
                  hintText: "20,000 - 40,000",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  hintStyle: GoogleFonts.lato(
                    color: Colors.black26,
                    fontSize: 16,
                  ),
                ),
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),

              //MESSAGE
              Container(
                child: Text(
                  "Message",
                  style: GoogleFonts.ptMono(
                    fontSize: MediaQuery.of(context).size.height * .018,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                maxLength: 100,
                textAlignVertical: TextAlignVertical.top,
                controller: message,
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Color(0xffE0E3D9),
                  filled: true,
                  counterText: '',
                  border: InputBorder.none,
                  hintText: "Describe your project….",
                  contentPadding: EdgeInsets.only(
                      left: 16, right: 16, top: 16, bottom: 100),
                  hintStyle: GoogleFonts.lato(
                    color: Colors.black26,
                    fontSize: 16,
                  ),
                ),
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 24),

              //SEND BTN
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width * .42,
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "Send Message",
                    style: GoogleFonts.ptMono(
                      fontSize: MediaQuery.of(context).size.height * .022,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchInstaURL() async => await canLaunch(_instaUrl)
      ? await launch(_instaUrl)
      : throw 'Could not launch $_instaUrl';

  void _launchGithubURL() async => await canLaunch(_githubUrl)
      ? await launch(_githubUrl)
      : throw 'Could not launch $_githubUrl';

  void _launchDribbleURL() async => await canLaunch(_dribbleUrl)
      ? await launch(_dribbleUrl)
      : throw 'Could not launch $_dribbleUrl';

  void _launchBehanceURL() async => await canLaunch(_behanceUrl)
      ? await launch(_behanceUrl)
      : throw 'Could not launch $_behanceUrl';

  void _launchWhatsappURL() async => await canLaunch(_whatsappUrl)
      ? await launch(_whatsappUrl)
      : throw 'Could not launch $_whatsappUrl';

  void _launchLinkedinURL() async => await canLaunch(_linkedinUrl)
      ? await launch(_linkedinUrl)
      : throw 'Could not launch $_linkedinUrl';
}

//WEB VIEW
class WebView extends StatefulWidget {
  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  _makingPhoneCall() async {
    const url = 'tel:8849273553';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  var _instaUrl = 'https://www.instagram.com/kev_gadhiya2011/';
  var _dribbleUrl = 'https://dribbble.com/ZeusGod/';
  var _behanceUrl = 'https://www.behance.net/kevalgadhiya';
  var _githubUrl = 'https://github.com/keval-gadhiya/';
  var _linkedinUrl = 'https://www.linkedin.com/in/keval-gadhiya-644587160/';
  var _whatsappUrl = 'https://wa.me/+918849273553/';

  TextEditingController fName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController projectType = TextEditingController();
  TextEditingController budget = TextEditingController();
  TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //IMAGE & INTRO TEXT && TOOLS
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //INTRO TEXT
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "Hi there! ✋ My name is ",
                                style: GoogleFonts.lato(
                                  fontSize:
                                      MediaQuery.of(context).size.height * .04,
                                  color: Colors.black,
                                  height: 1.5,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Keval Gadhiya. ",
                                    style: GoogleFonts.lato(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .04,
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "I’m a ",
                                    style: GoogleFonts.lato(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .04,
                                      color: Colors.black,
                                      height: 1.5,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        "Junior UI/UX Designer & Flutter Designer ",
                                    style: GoogleFonts.lato(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .04,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "in Australia, Queensland.",
                                    style: GoogleFonts.lato(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .04,
                                      color: Colors.black,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "I am born in the town of Savar Kundla. My objective is to obtain a position in a professional environment where I can solve any creative problems and lean my skill with a growing company to achieve optimum utilisation of its resources.",
                              style: GoogleFonts.ptMono(
                                fontSize:
                                    MediaQuery.of(context).size.height * .022,
                                color: Colors.black,
                                height: 1.6,
                              ),
                            ),
                            SizedBox(height: 24),
                            //BUTTONS
                            Row(
                              children: [
                                //DOWNLOAD CV BTN
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height *
                                        .06,
                                    width:
                                        MediaQuery.of(context).size.width * .18,
                                    color: Theme.of(context).primaryColor,
                                    child: Text(
                                      "Download CV",
                                      style: GoogleFonts.ptMono(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .022,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 24),
                                //CONTACT ME BTN
                                InkWell(
                                  onTap: _makingPhoneCall,
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        .06,
                                    width:
                                        MediaQuery.of(context).size.width * .18,
                                    child: Text(
                                      "Contact Me",
                                      style: GoogleFonts.ptMono(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .022,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 24),
                            //TOOLS
                            Container(
                              height: 140,
                              width: double.infinity,
                              color: Color(0xffE0E3D9),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  //XD
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        child:
                                            Image.asset("assets/images/xd.png"),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Adobe XD".toUpperCase(),
                                        style: GoogleFonts.ptMono(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .019,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  //FIGMA
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        child: Image.asset(
                                            "assets/images/figma.png"),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "figma".toUpperCase(),
                                        style: GoogleFonts.ptMono(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .019,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  //VS STUDIO
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        child:
                                            Image.asset("assets/images/vs.png"),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "VS studio".toUpperCase(),
                                        style: GoogleFonts.ptMono(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .019,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 160),

                    //IMAGE
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .46,
                            width: MediaQuery.of(context).size.height * .34,
                            color: Colors.black,
                            child: Image.asset(
                              "assets/images/keval.jpeg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 24), //EMAIL TEXT AND ICONS
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email me: kevalgadhiya2005@gmail.com",
                                style: GoogleFonts.ptMono(
                                  fontSize:
                                      MediaQuery.of(context).size.height * .014,
                                  height: 1.6,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 18),
                              Text(
                                "Call me : +91 884-927-3553",
                                style: GoogleFonts.ptMono(
                                  fontSize:
                                      MediaQuery.of(context).size.height * .014,
                                  height: 1.6,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 18),
                              Text(
                                "Location : Bangalore, India",
                                style: GoogleFonts.ptMono(
                                  fontSize:
                                      MediaQuery.of(context).size.height * .014,
                                  height: 1.6,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 18),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      return _launchDribbleURL();
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/dribbble.svg",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .024,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      return _launchBehanceURL();
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/behance.svg",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .024,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      return _launchGithubURL();
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/github.svg",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .024,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      return _launchLinkedinURL();
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/linked.svg",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .024,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      return _launchInstaURL();
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/instagram.svg",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .024,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      return _launchWhatsappURL();
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/whatsapp.svg",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .024,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 24),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),

              //SKILLS
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Main Skills",
                      style: GoogleFonts.lato(
                        fontSize: MediaQuery.of(context).size.height * .032,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16),
                    Divider(
                      thickness: 2,
                      color: Colors.black12,
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo",
                                  style: GoogleFonts.ptMono(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .02,
                                    color: Colors.black,
                                    height: 1.7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 80),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //PROTOTYPING
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Prototyping",
                                    style: GoogleFonts.ptMono(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .018,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "78%",
                                    style: GoogleFonts.ptMono(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .018,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              Stack(
                                children: [
                                  Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(.2),
                                  ),
                                  Container(
                                    height: 10,
                                    width:
                                        MediaQuery.of(context).size.width * .78,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ],
                              ),
                              SizedBox(height: 18),

                              //WIREFRAMING
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Wireframing",
                                    style: GoogleFonts.ptMono(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .018,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "83%",
                                    style: GoogleFonts.ptMono(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .018,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              Stack(
                                children: [
                                  Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(.2),
                                  ),
                                  Container(
                                    height: 10,
                                    width:
                                        MediaQuery.of(context).size.width * .83,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ],
                              ),
                              SizedBox(height: 18),

                              //FLUTTER UI
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Flutter Ui",
                                    style: GoogleFonts.ptMono(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .018,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "95%",
                                    style: GoogleFonts.ptMono(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .018,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              Stack(
                                children: [
                                  Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(.2),
                                  ),
                                  Container(
                                    height: 10,
                                    width:
                                        MediaQuery.of(context).size.width * .95,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ],
                              ),
                              SizedBox(height: 18),

                              //APP DESIGN
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "App designing",
                                    style: GoogleFonts.ptMono(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .018,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "100%",
                                    style: GoogleFonts.ptMono(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .018,
                                      color: Colors.black,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              Stack(
                                children: [
                                  Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(.2),
                                  ),
                                  Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ],
                              ),
                              SizedBox(height: 18),

                              //WEB DESIGN
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Web designing",
                                    style: GoogleFonts.ptMono(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .018,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "100%",
                                    style: GoogleFonts.ptMono(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .018,
                                      color: Colors.black,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              Stack(
                                children: [
                                  Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(.2),
                                  ),
                                  Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),

              //SKILLS
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Experinece",
                      style: GoogleFonts.lato(
                        fontSize: MediaQuery.of(context).size.height * .032,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16),
                    Divider(
                      thickness: 2,
                      color: Colors.black12,
                    ),
                    SizedBox(height: 16),
                    Column(
                      children: [
                        //2021 - PRESENT
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //2021 - PRESENT
                                    Text(
                                      "2021 - present",
                                      style: GoogleFonts.ptMono(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .024,
                                        color: Color(0xff9EA295),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 80),
                            Expanded(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Junior UI/UX Designer & Flutter Designer",
                                    style: GoogleFonts.lato(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .034,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    "eThink Solution - Australia",
                                    style: GoogleFonts.lato(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .022,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    "My job is to make Web or App-based designs for the client and to fulfil their needs.\n\nConvert that design into real App\n\nCoding for Web design and App design in Flutter",
                                    style: GoogleFonts.ptMono(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .018,
                                      color: Colors.black,
                                      height: 1.4,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                        //2020 - 2021
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //2020 - 2021
                                    Text(
                                      "2020 - 2021",
                                      style: GoogleFonts.ptMono(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .024,
                                        color: Color(0xff9EA295),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 80),
                            Expanded(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "UI/UX Designer",
                                    style: GoogleFonts.lato(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .034,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    "GoProtoz Design Studio - Bangalore",
                                    style: GoogleFonts.lato(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .022,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    "My job is to make Web or App-based designs for the client and to fulfil their needs.\n\nDo some User Research for better User Experience and make user feel easy.\n\nWireframing is like making a blue print of the app or website.\n\nPrototyping make user feel the app/website real and can move any were is design.",
                                    style: GoogleFonts.ptMono(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .018,
                                      color: Colors.black,
                                      height: 1.4,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),

              //QUOTES
              Container(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 60, bottom: 60),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Never Stop Learning",
                      style: GoogleFonts.lato(
                        fontSize: MediaQuery.of(context).size.height * .05,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      "If your actions inspire others to dream more, learn more, do more and become more, you are a leader.” ",
                      style: GoogleFonts.ptMono(
                        fontSize: MediaQuery.of(context).size.height * .024,
                        color: Colors.black,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Text(
                            "John Quincy Adams",
                            style: GoogleFonts.lato(
                              fontSize:
                                  MediaQuery.of(context).size.height * .03,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),

              //LETS CONNECT
              Text(
                "Let’s work together",
                style: GoogleFonts.lato(
                  fontSize: MediaQuery.of(context).size.height * .028,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Divider(
                thickness: 2,
                color: Colors.black12,
              ),
              SizedBox(height: 16),

              //FULL NAME
              Container(
                child: Text(
                  "Full Name",
                  style: GoogleFonts.ptMono(
                    fontSize: MediaQuery.of(context).size.height * .018,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: fName,
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Color(0xffE0E3D9),
                  filled: true,
                  counterText: '',
                  border: InputBorder.none,
                  hintText: "Full Name",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  hintStyle: GoogleFonts.lato(
                    color: Colors.black26,
                    fontSize: MediaQuery.of(context).size.height * .02,
                  ),
                ),
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * .02,
                ),
              ),
              SizedBox(height: 20),

              //EMAIL
              Container(
                child: Text(
                  "Email",
                  style: GoogleFonts.ptMono(
                    fontSize: MediaQuery.of(context).size.height * .018,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: email,
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Color(0xffE0E3D9),
                  filled: true,
                  counterText: '',
                  border: InputBorder.none,
                  hintText: "Full Name",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  hintStyle: GoogleFonts.lato(
                    color: Colors.black26,
                    fontSize: MediaQuery.of(context).size.height * .02,
                  ),
                ),
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * .02,
                ),
              ),
              SizedBox(height: 20),

              //PROJECT TYPE
              Container(
                child: Text(
                  "Project Type",
                  style: GoogleFonts.ptMono(
                    fontSize: MediaQuery.of(context).size.height * .018,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: projectType,
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Color(0xffE0E3D9),
                  filled: true,
                  counterText: '',
                  border: InputBorder.none,
                  hintText: "Website Design or Application Design",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  hintStyle: GoogleFonts.lato(
                    color: Colors.black26,
                    fontSize: MediaQuery.of(context).size.height * .02,
                  ),
                ),
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * .02,
                ),
              ),
              SizedBox(height: 20),

              //BUDGET
              Container(
                child: Text(
                  "Budget (INR)",
                  style: GoogleFonts.ptMono(
                    fontSize: MediaQuery.of(context).size.height * .018,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: budget,
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Color(0xffE0E3D9),
                  filled: true,
                  counterText: '',
                  border: InputBorder.none,
                  hintText: "20,000 - 40,000",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  hintStyle: GoogleFonts.lato(
                    color: Colors.black26,
                    fontSize: MediaQuery.of(context).size.height * .02,
                  ),
                ),
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * .02,
                ),
              ),
              SizedBox(height: 20),

              //MESSAGE
              Container(
                child: Text(
                  "Message",
                  style: GoogleFonts.ptMono(
                    fontSize: MediaQuery.of(context).size.height * .018,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                maxLength: 100,
                textAlignVertical: TextAlignVertical.top,
                controller: message,
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Color(0xffE0E3D9),
                  filled: true,
                  counterText: '',
                  border: InputBorder.none,
                  hintText: "Describe your project….",
                  contentPadding: EdgeInsets.only(
                      left: 16, right: 16, top: 16, bottom: 100),
                  hintStyle: GoogleFonts.lato(
                    color: Colors.black26,
                    fontSize: MediaQuery.of(context).size.height * .02,
                  ),
                ),
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * .02,
                ),
              ),
              SizedBox(height: 32),

              //SEND BTN
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width * .18,
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "Send Message",
                    style: GoogleFonts.ptMono(
                      fontSize: MediaQuery.of(context).size.height * .022,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchInstaURL() async => await canLaunch(_instaUrl)
      ? await launch(_instaUrl)
      : throw 'Could not launch $_instaUrl';

  void _launchGithubURL() async => await canLaunch(_githubUrl)
      ? await launch(_githubUrl)
      : throw 'Could not launch $_githubUrl';

  void _launchDribbleURL() async => await canLaunch(_dribbleUrl)
      ? await launch(_dribbleUrl)
      : throw 'Could not launch $_dribbleUrl';

  void _launchBehanceURL() async => await canLaunch(_behanceUrl)
      ? await launch(_behanceUrl)
      : throw 'Could not launch $_behanceUrl';

  void _launchWhatsappURL() async => await canLaunch(_whatsappUrl)
      ? await launch(_whatsappUrl)
      : throw 'Could not launch $_whatsappUrl';

  void _launchLinkedinURL() async => await canLaunch(_linkedinUrl)
      ? await launch(_linkedinUrl)
      : throw 'Could not launch $_linkedinUrl';
}
