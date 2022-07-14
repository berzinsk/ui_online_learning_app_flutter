import 'package:flutter/material.dart';

import './components/course_detail_tab_button.dart';
import 'components/material/course_details_material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: const Image(
                  image: AssetImage('asset/images/search_result_image_0.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CourseDetailTabButton(title: 'Overview'),
                    CourseDetailTabButton(
                      title: 'Material',
                      isActive: true,
                    ),
                    CourseDetailTabButton(title: 'Review'),
                  ],
                ),
              ),
              const CourseDetailsMaterial(),
            ],
          ),
        ),
      ),
    );
  }
}
