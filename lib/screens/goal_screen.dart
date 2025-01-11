import 'package:flutter/material.dart';
import 'package:neev/constants/colors.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 393,
    height: 852,
    clipBehavior: Clip.antiAlias,
    decoration: ShapeDecoration(
        gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFFBA68C8), Color(0xFFDCB3E3), Color(0xFFEDD9F1), Colors.white],
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
        ),
    ),
    child: Stack(
        children: [
            Positioned(
                left: 50,
                top: 781,
                child: Container(width: 294, height: 58),
            ),
            Positioned(
                left: 28,
                top: 207,
                child: Container(
                    height: 921,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Container(
                                width: double.infinity,
                                height: 68,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                                'Type of Business Sector',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -1,
                                                ),
                                            ),
                                        ),
                                        const SizedBox(height: 6),
                                        Container(
                                            width: 337,
                                            height: 38,
                                            child: Stack(
                                                children: [
                                                    Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                            width: 337,
                                                            height: 38,
                                                            decoration: ShapeDecoration(
                                                                color: Colors.white,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                ),
                                                                shadows: [
                                                                    BoxShadow(
                                                                        color: Color(0x3F000000),
                                                                        blurRadius: 4,
                                                                        offset: Offset(0, 4),
                                                                        spreadRadius: 0,
                                                                    )
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 302,
                                                        top: 14,
                                                        child: Container(
                                                            width: 21,
                                                            height: 10.50,
                                                            child: FlutterLogo(),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 16,
                                                        top: 9,
                                                        child: Text(
                                                            'Select your type',
                                                            style: TextStyle(
                                                                color: Colors.black.withOpacity(0.25),
                                                                fontSize: 16,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: -0.80,
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(height: 33),
                            Container(
                                width: double.infinity,
                                height: 113,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                                'Business Overview',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -1,
                                                ),
                                            ),
                                        ),
                                        const SizedBox(height: 6),
                                        Container(
                                            width: 337,
                                            height: 83,
                                            child: Stack(
                                                children: [
                                                    Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                            width: 337,
                                                            height: 83,
                                                            decoration: ShapeDecoration(
                                                                color: Colors.white,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                ),
                                                                shadows: [
                                                                    BoxShadow(
                                                                        color: Color(0x3F000000),
                                                                        blurRadius: 4,
                                                                        offset: Offset(0, 4),
                                                                        spreadRadius: 0,
                                                                    )
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 16,
                                                        top: 12,
                                                        child: Text(
                                                            'Describe your business',
                                                            style: TextStyle(
                                                                color: Colors.black.withOpacity(0.25),
                                                                fontSize: 16,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: -0.80,
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 272,
                                                        top: 48,
                                                        child: Container(
                                                            child: Row(
                                                                mainAxisSize: MainAxisSize.min,
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                    Opacity(
                                                                        opacity: 0.65,
                                                                        child: Container(
                                                                            width: 24,
                                                                            height: 24,
                                                                            decoration: BoxDecoration(
                                                                                image: DecorationImage(
                                                                                    image: NetworkImage("https://via.placeholder.com/24x24"),
                                                                                    fit: BoxFit.contain,
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    const SizedBox(width: 7),
                                                                    Opacity(
                                                                        opacity: 0.65,
                                                                        child: Container(
                                                                            width: 24,
                                                                            height: 24,
                                                                            decoration: BoxDecoration(
                                                                                image: DecorationImage(
                                                                                    image: NetworkImage("https://via.placeholder.com/24x24"),
                                                                                    fit: BoxFit.contain,
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(height: 33),
                            Container(
                                width: double.infinity,
                                height: 68,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                                'Daily Customer Count',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -1,
                                                ),
                                            ),
                                        ),
                                        const SizedBox(height: 6),
                                        Container(
                                            width: 337,
                                            height: 38,
                                            child: Stack(
                                                children: [
                                                    Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                            width: 337,
                                                            height: 38,
                                                            decoration: ShapeDecoration(
                                                                color: Colors.white,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                ),
                                                                shadows: [
                                                                    BoxShadow(
                                                                        color: Color(0x3F000000),
                                                                        blurRadius: 4,
                                                                        offset: Offset(0, 4),
                                                                        spreadRadius: 0,
                                                                    )
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 302,
                                                        top: 14,
                                                        child: Container(
                                                            width: 21,
                                                            height: 10.50,
                                                            child: FlutterLogo(),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 16,
                                                        top: 9,
                                                        child: Text(
                                                            'Select range',
                                                            style: TextStyle(
                                                                color: Colors.black.withOpacity(0.25),
                                                                fontSize: 16,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: -0.80,
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(height: 33),
                            Container(
                                width: double.infinity,
                                height: 68,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                                'Location of Business',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -1,
                                                ),
                                            ),
                                        ),
                                        const SizedBox(height: 6),
                                        Container(
                                            width: 337,
                                            height: 38,
                                            child: Stack(
                                                children: [
                                                    Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                            width: 337,
                                                            height: 38,
                                                            decoration: ShapeDecoration(
                                                                color: Colors.white,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                ),
                                                                shadows: [
                                                                    BoxShadow(
                                                                        color: Color(0x3F000000),
                                                                        blurRadius: 4,
                                                                        offset: Offset(0, 4),
                                                                        spreadRadius: 0,
                                                                    )
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 302,
                                                        top: 14,
                                                        child: Container(
                                                            width: 21,
                                                            height: 10.50,
                                                            child: FlutterLogo(),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 16,
                                                        top: 9,
                                                        child: Text(
                                                            'Select one',
                                                            style: TextStyle(
                                                                color: Colors.black.withOpacity(0.25),
                                                                fontSize: 16,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: -0.80,
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(height: 33),
                            Container(
                                width: double.infinity,
                                height: 68,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                                'Required Investment',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -1,
                                                ),
                                            ),
                                        ),
                                        const SizedBox(height: 6),
                                        Container(
                                            width: 337,
                                            height: 38,
                                            child: Stack(
                                                children: [
                                                    Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                            width: 337,
                                                            height: 38,
                                                            decoration: ShapeDecoration(
                                                                color: Colors.white,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                ),
                                                                shadows: [
                                                                    BoxShadow(
                                                                        color: Color(0x3F000000),
                                                                        blurRadius: 4,
                                                                        offset: Offset(0, 4),
                                                                        spreadRadius: 0,
                                                                    )
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 302,
                                                        top: 14,
                                                        child: Container(
                                                            width: 21,
                                                            height: 10.50,
                                                            child: FlutterLogo(),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 16,
                                                        top: 9,
                                                        child: Text(
                                                            'e.g. like cost of one sewing machine',
                                                            style: TextStyle(
                                                                color: Colors.black.withOpacity(0.25),
                                                                fontSize: 16,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: -0.80,
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(height: 33),
                            Container(
                                width: double.infinity,
                                height: 68,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                                'Business Assets',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -1,
                                                ),
                                            ),
                                        ),
                                        const SizedBox(height: 6),
                                        Container(
                                            width: 337,
                                            height: 38,
                                            child: Stack(
                                                children: [
                                                    Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                            width: 337,
                                                            height: 38,
                                                            decoration: ShapeDecoration(
                                                                color: Colors.white,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                ),
                                                                shadows: [
                                                                    BoxShadow(
                                                                        color: Color(0x3F000000),
                                                                        blurRadius: 4,
                                                                        offset: Offset(0, 4),
                                                                        spreadRadius: 0,
                                                                    )
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 302,
                                                        top: 14,
                                                        child: Container(
                                                            width: 21,
                                                            height: 10.50,
                                                            child: FlutterLogo(),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 16,
                                                        top: 9,
                                                        child: Text(
                                                            'Select one or more',
                                                            style: TextStyle(
                                                                color: Colors.black.withOpacity(0.25),
                                                                fontSize: 16,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: -0.80,
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(height: 33),
                            Container(
                                width: double.infinity,
                                height: 68,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                                'Type of Savings',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -1,
                                                ),
                                            ),
                                        ),
                                        const SizedBox(height: 6),
                                        Container(
                                            width: 337,
                                            height: 38,
                                            child: Stack(
                                                children: [
                                                    Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                            width: 337,
                                                            height: 38,
                                                            decoration: ShapeDecoration(
                                                                color: Colors.white,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                ),
                                                                shadows: [
                                                                    BoxShadow(
                                                                        color: Color(0x3F000000),
                                                                        blurRadius: 4,
                                                                        offset: Offset(0, 4),
                                                                        spreadRadius: 0,
                                                                    )
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 302,
                                                        top: 14,
                                                        child: Container(
                                                            width: 21,
                                                            height: 10.50,
                                                            child: FlutterLogo(),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 16,
                                                        top: 9,
                                                        child: Text(
                                                            'Select the type/method',
                                                            style: TextStyle(
                                                                color: Colors.black.withOpacity(0.25),
                                                                fontSize: 16,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: -0.80,
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(height: 33),
                            Container(
                                width: double.infinity,
                                height: 68,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                                'Current Savings',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -1,
                                                ),
                                            ),
                                        ),
                                        const SizedBox(height: 6),
                                        Container(
                                            width: 337,
                                            height: 38,
                                            child: Stack(
                                                children: [
                                                    Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                            width: 337,
                                                            height: 38,
                                                            decoration: ShapeDecoration(
                                                                color: Colors.white,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                ),
                                                                shadows: [
                                                                    BoxShadow(
                                                                        color: Color(0x3F000000),
                                                                        blurRadius: 4,
                                                                        offset: Offset(0, 4),
                                                                        spreadRadius: 0,
                                                                    )
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 16,
                                                        top: 9,
                                                        child: Text(
                                                            'Enter your current savings',
                                                            style: TextStyle(
                                                                color: Colors.black.withOpacity(0.25),
                                                                fontSize: 16,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: -0.80,
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(height: 33),
                            Container(
                                width: double.infinity,
                                height: 68,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                                'Alternative Income Source(s)',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: -1,
                                                ),
                                            ),
                                        ),
                                        const SizedBox(height: 6),
                                        Container(
                                            width: 337,
                                            height: 38,
                                            child: Stack(
                                                children: [
                                                    Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                            width: 337,
                                                            height: 38,
                                                            decoration: ShapeDecoration(
                                                                color: Colors.white,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                ),
                                                                shadows: [
                                                                    BoxShadow(
                                                                        color: Color(0x3F000000),
                                                                        blurRadius: 4,
                                                                        offset: Offset(0, 4),
                                                                        spreadRadius: 0,
                                                                    )
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 302,
                                                        top: 14,
                                                        child: Container(
                                                            width: 21,
                                                            height: 10.50,
                                                            child: FlutterLogo(),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 16,
                                                        top: 9,
                                                        child: Text(
                                                            'Select one or more',
                                                            style: TextStyle(
                                                                color: Colors.black.withOpacity(0.25),
                                                                fontSize: 16,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: -0.80,
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 0,
                top: 768,
                child: Container(
                    width: 393,
                    height: 84,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                            BoxShadow(
                                color: Color(0x7FC890D1),
                                blurRadius: 4,
                                offset: Offset(0, -4),
                                spreadRadius: 0,
                            )
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 22,
                top: 781,
                child: Container(
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Container(
                                height: double.infinity,
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                        Container(
                                            width: 44,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                    Container(
                                                        width: 44,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: NetworkImage("https://via.placeholder.com/44x40"),
                                                                fit: BoxFit.contain,
                                                            ),
                                                        ),
                                                    ),
                                                    SizedBox(
                                                        width: double.infinity,
                                                        height: 11,
                                                        child: Text(
                                                            'Learn',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                color: Color(0xFFE0E0E0),
                                                                fontSize: 15,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: -0.75,
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        const SizedBox(width: 17),
                                        Container(
                                            width: 63,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                    Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: NetworkImage("https://via.placeholder.com/40x40"),
                                                                fit: BoxFit.contain,
                                                            ),
                                                        ),
                                                    ),
                                                    Text(
                                                        'My Goals',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFFBA68C8),
                                                            fontSize: 15,
                                                            fontFamily: 'Montserrat',
                                                            fontWeight: FontWeight.w500,
                                                            letterSpacing: -0.75,
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        const SizedBox(width: 17),
                                        Container(
                                            width: 51,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                    Container(
                                                        width: double.infinity,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: NetworkImage("https://via.placeholder.com/51x40"),
                                                                fit: BoxFit.contain,
                                                            ),
                                                        ),
                                                    ),
                                                    SizedBox(
                                                        width: double.infinity,
                                                        height: 18,
                                                        child: Text(
                                                            'Tools',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                color: Color(0xFFE0E0E0),
                                                                fontSize: 15,
                                                                fontFamily: 'Montserrat',
                                                                fontWeight: FontWeight.w500,
                                                                letterSpacing: -0.75,
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        const SizedBox(width: 17),
                                        Container(
                                            width: 63,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                    Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: NetworkImage("https://via.placeholder.com/40x40"),
                                                                fit: BoxFit.contain,
                                                            ),
                                                        ),
                                                    ),
                                                    Text(
                                                        'My Plans',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFFE0E0E0),
                                                            fontSize: 15,
                                                            fontFamily: 'Montserrat',
                                                            fontWeight: FontWeight.w500,
                                                            letterSpacing: -0.75,
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        const SizedBox(width: 17),
                                        Container(
                                            width: 60,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                    Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: NetworkImage("https://via.placeholder.com/40x40"),
                                                                fit: BoxFit.contain,
                                                            ),
                                                        ),
                                                    ),
                                                    Text(
                                                        'Connect',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFFE0E0E0),
                                                            fontSize: 15,
                                                            fontFamily: 'Montserrat',
                                                            fontWeight: FontWeight.w500,
                                                            letterSpacing: -0.75,
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 34,
                top: 111,
                child: Container(
                    height: 76,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            SizedBox(
                                width: double.infinity,
                                child: Text(
                                    'Set your Goals!',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontFamily: 'ADLaM Display',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -2,
                                    ),
                                ),
                            ),
                            SizedBox(
                                width: double.infinity,
                                child: Text(
                                    'Are you on track with your goals?',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -1,
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 28,
                top: 35,
                child: Container(
                    width: 337,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Text(
                                'NEEV.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontFamily: 'ADLaM Display',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -1.20,
                                ),
                            ),
                            const SizedBox(width: 230),
                            Container(
                                width: 45,
                                height: 45,
                                child: Stack(
                                    children: [
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                                width: 45,
                                                height: 45,
                                                decoration: ShapeDecoration(
                                                    color: Color(0xFFD9D9D9),
                                                    shape: OvalBorder(),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: -2.45,
                                            top: -5.87,
                                            child: Container(
                                                width: 49.89,
                                                height: 74.84,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: NetworkImage("https://via.placeholder.com/50x75"),
                                                        fit: BoxFit.fill,
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        ],
    ),
);
  }

  Widget _buildAppBar() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Row(
        children: [
          Text(
            'My Goals',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Spacer(),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user_icon.png'),
          ),
        ],
      ),
    );
  }

  Widget _buildGoalSummary() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'Total Savings Goal',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '₹50,000',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColor.primaryColor,
            ),
          ),
          const SizedBox(height: 16),
          LinearProgressIndicator(
            value: 0.6,
            backgroundColor: Colors.grey[200],
            valueColor:
                const AlwaysStoppedAnimation<Color>(AppColor.primaryColor),
          ),
        ],
      ),
    );
  }

  Widget _buildGoalsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Current Goals',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return _buildGoalCard();
          },
        ),
      ],
    );
  }

  Widget _buildGoalCard() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: AppColor.primaryColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.savings,
              color: AppColor.primaryColor,
              size: 32,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Emergency Fund',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(
                      child: LinearProgressIndicator(
                        value: 0.7,
                        backgroundColor: Colors.grey[200],
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColor.primaryColor),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '70%',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  '₹35,000 / ₹50,000',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
