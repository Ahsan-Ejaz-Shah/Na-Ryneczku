import 'package:go_router/go_router.dart';
import 'package:onboard/home.dart';
import 'package:onboard/loginscreens/email_verification.dart';
import 'package:onboard/loginscreens/forgot_screen.dart';
import 'package:onboard/loginscreens/login_screen.dart';
import 'package:onboard/loginscreens/phone_verification.dart';
import 'package:onboard/loginscreens/register_screen.dart';
import 'package:onboard/loginscreens/reset_pass.dart';
import 'package:onboard/loginscreens/role_screen.dart';
import 'package:onboard/onboard.dart';
import 'package:onboard/onboardscreens/onboarding_sec.dart';
import 'package:onboard/onboardscreens/onboarding_three.dart';
import 'package:onboard/seller_home/add_product.dart';
import 'package:onboard/seller_home/new_custom_product.dart';
import 'package:onboard/seller_home/preview_publish.dart';
import 'package:onboard/seller_home/product_details.dart';
import 'package:onboard/seller_home/sales_detail.dart';
import 'package:onboard/seller_home/setting.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => OnBoard(),
      routes: [
        GoRoute(
          path: 'onBoardSec',
          builder: (context, state) => OnBoardingSec(),
        ),
        GoRoute(
          path: 'onBoardThird',
          builder: (context, state) => OnBoardingThree(),
        ),
      ],
    ),
    GoRoute(
      path: '/LoginScreen',
      builder: (context, state) => LoginScreen(),
      routes: [
        GoRoute(
          path: 'rolescreen',
          builder: (context, state) => const RoleScreen(),
        ),
        GoRoute(
          path: 'forgotpassword',
          builder: (context, state) => const ForgotScreen(),
          routes: [
            GoRoute(
              path: 'emailverification',
              builder: (context, state) => const EmailVerification(),
            ),
            GoRoute(
              path: 'resetpassword',
              builder: (context, state) => const ResetPass(),
              routes: [
                GoRoute(
                  path: 'phoneverification',
                  builder: (context, state) => const PhoneVerification(),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: 'register',
          builder: (context, state) => const RegisterScreen(),
          routes: [
            GoRoute(
              path: 'emailverification',
              builder: (context, state) => const EmailVerification(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/HomeScreen',
      builder: (context, state) => Home(),
      routes: [
        GoRoute(
          path: 'setting',
          builder: (context, state) => const Setting(),
        ),
        GoRoute(
          path: 'salesdetail',
          builder: (context, state) => SalesDetailScreen(),
          routes: [
            GoRoute(
              path: 'addproduct',
              builder: (context, state) => AddProduct(),
              routes: [
                GoRoute(
                  path: 'customproduct',
                  builder: (context, state) => const NewCustomProduct(),
                  routes: [
                    GoRoute(
                      path: 'previewpublish',
                      builder: (context, state) => PreviewPublish(),
                    ),
                  ],
                ),
                GoRoute(
                  path: 'productdetails',
                  builder: (context, state) => ProductDetails(),
                  routes: [
                    GoRoute(
                      path: 'previewpublish',
                      builder: (context, state) => PreviewPublish(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
