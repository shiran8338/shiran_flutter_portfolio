import 'package:flutter/material.dart';
import 'package:shiran_portfolio/common/blog.dart';
import 'package:shiran_portfolio/mobile/about_mobile.dart';
import 'package:shiran_portfolio/mobile/contact_mobile.dart';
import 'package:shiran_portfolio/mobile/works_mobile.dart';
import 'package:shiran_portfolio/web/about_web.dart';
import 'package:shiran_portfolio/web/landing_page_web.dart';
import 'package:shiran_portfolio/web/works_web.dart';

import 'mobile/landing_page_mobile.dart';
import 'web/contact_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return LandingPageWeb();
            } else
              return LandingPageMobile();
          }),
        );
      case '/contact':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return ContactWeb();
                  } else
                    return ContactMobile();
                }),
            settings: settings);
      case '/about':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return AboutWeb();
                  } else
                    return AboutMobile();
                }),
            settings: settings);
      case '/blog':
        return MaterialPageRoute(builder: (_) => Blog(), settings: settings);
      case '/works':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return WorksWeb();
                  } else
                    return WorksMobile();
                }),
            settings: settings);
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return LandingPageWeb();
            } else
              return LandingPageMobile();
          }),
        );
    }
  }
}
