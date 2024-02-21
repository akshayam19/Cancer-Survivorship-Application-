import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:survivorship_care_plan_app/theme.dart';

final Map<String, List<Resource>> urls = {
      'Physical Activity': 
      [ 
        Resource(synopsis: 'Healthy living means making positive behavior changes as part of an ongoing, life-long process. To choose areas for improvement, we recommend focusing on these 6 pillars, which we call the “Mix of Six.” Each supports the other, and the synergy of all 6 leads to the most success.', text: '6 Lifestyle Changes to Improve Your Cancer Care', url: 'https://www.cancer.net/blog/2018-09/6-lifestyle-changes-improve-your-cancer-care'), 
        Resource(synopsis: 'Research shows that for most people exercise is safe and helpful before, during, and after cancer treatment. It can help improve your quality of life as well as the energy you have to do the things you like. Physical activity may also help you cope with side effects of treatment and possibly decrease your risk of new cancers in the future.', text: 'Physical Activity and the Person with Cancer', url :'https://www.cancer.org/cancer/survivorship/be-healthy-after-treatment/physical-activity-and-the-cancer-patient.html#:~:text=Start%20slowly%20and%20build%20up,least%202%20days%20per%20week'), 
        Resource(synopsis: 'Exercise is an important part of a cancer treatment plan. A growing amount of research shows that regular exercise can greatly improve physical and mental health during every phase of treatment. Even if you were not active before your cancer diagnosis, an exercise program that meets your unique needs can help you get moving safely and successfully.', text: 'Exercise During Cancer Treatment', url: 'https://www.cancer.net/survivorship/healthy-living/exercise-during-cancer-treatment'), 
        Resource(synopsis: 'Physical activity has many benefits besides helping you feel better. It helps build strength and balance, increases your ability to move and get around, and reduces stress.', text: 'Physical Activity Cancer Survivors', url: 'https://www.cdc.gov/cancer/survivors/healthy-living-guides/physical-health/physical-activity.htm'), 
        Resource(synopsis: 'In 2020, 19.3 million new cancer cases were diagnosed, and almost 10 million deaths from cancer were recorded. Cancer patients may experience fatigue, depression, anxiety, reduced quality of life and sleep problems. Cancer treatments cause numerous side effects and have a negative impact on all body systems. Physical activity is important for cancer patients.', text: 'Physical Activity and Cancer Care- A Review', url : 'https://doi.org/10.3390%2Fcancers14174154')
      ],
      'Nutrition' :
      [
        Resource(synopsis: 'People with cancer often need to follow diets that are different fromwhat you think of as healthy. For most people, a healthy diet includes the following: lots of fruits, vegetables, and whole grain breads and cerealsÎ modest amounts of lean protein and dairy products small amounts of sugar, alcohol, salt, and saturated and trans fats (such as those found in butter, meat, dairy, fast food, and fried foods) When you have cancer, though, you need to eat to keep your strength up in order to deal with the side effects of treatment. When you are healthy, eating enough food is often not a problem. But when you are dealing with cancer and treatment, this can be a real challenge', text: 'Eating Hints: Before, during, and after Cancer Treatment', url: 'https://www.cancer.gov/publications/patient-education/eatinghints.pdf'), 
        Resource(synopsis: 'Cancer can affect every aspect of your health, including your appetite and diet. Selvi Rajagopal, M.D., a specialist in internal medicine at Johns Hopkins Medicine, explains why your diet is so important during cancer treatment, and provides tips on foods to add and avoid.', text: 'Cancer Diet: Foods to Add and Avoid During Cancer Treatment', url: 'https://www.hopkinsmedicine.org/health/conditions-and-diseases/cancer/cancer-diet-foods-to-add-and-avoid-during-cancer-treatment'), 
        Resource(synopsis: 'What you eat is really important when you have cancer. Your body needs enough calories and nutrients to stay strong. But the disease can make it hard to get what you need, which can be different before, during, and after treatment. And sometimes, you just won’t feel like eating.', text: 'How to Eat when You Have Cancer', url: 'https://www.webmd.com/cancer/cancer-diet'), 
        Resource(synopsis: 'Navigating the turbulent waters of breast cancer is a challenge no one should face alone. For Black women, this journey often carries unique burdens, as statistics show that breast cancer can be more aggressive and harder to detect in women of color. In this heartfelt discussion, we’ll delve into three crucial nutritional recommendations tailored to support Black women battling breast cancer. ', text: '3 Nutritional Recommendations for Black Women Battling Breast Cancer', url: 'https://blackdoctor.org/nutritional-recommendations-for-black-women-battling-breast-cancer/'), 
        Resource(synopsis: 'Why Is Eating Healthy Food Important?  Quite simply, the food you eat affects how you feel. A healthy diet can help you feel better, regain your strength and energy, and reduce risks for health problems like heart disease, diabetes, and some cancers. But before making any big changes to your diet, check with your doctor to make sure you don’t have any food or dietary restrictions.', text: 'Eating Health Cancer Survivors', url: 'https://www.cdc.gov/cancer/survivors/healthy-living-guides/physical-health/eating-healthy.htm'), 
        Resource(synopsis: 'Explore our collection of healthy recipes for breakfast, lunch, and dinner, all created to support the nutritional needs of people impacted by cancer. You’ll also find recipes for nourishing smoothies, desserts, and snacks. Search our collection by a specific eating challenge, meal type, or both.', text: 'Cancer Support Community: Recipe Gallery', url: 'https://www.cancersupportcommunity.org/recipe-gallery')
      ],
      'Spirituality':
      [
        Resource(synopsis: 'CancerCare provides information, resources and support about spirituality for people affected by cancer.', text: 'Spirituality and Cancer', url: 'https://www.cancercare.org/tagged/spirituality'), 
        Resource(synopsis: 'Living with cancer is difficult for patients and family members alike. Mercy Pastoral Services can help. Our highly-trained chaplains provide spiritual care and emotional support to cancer patients and immediate family members at no cost.', text: 'Spiritual Care for Cancer Patients', url: 'https://www.mercy.net/service/spiritual-care-for-cancer-patients/'), 
        Resource(synopsis: 'Many patients with cancer rely on spiritual or religious beliefs and practices to help them cope with their disease. This is called spiritual coping. Many caregivers also rely on spiritual coping. Each person may have different spiritual needs, depending on cultural and religious traditions. For some seriously ill patients, spiritual well-being may affect how much anxiety they feel about death. For others, it may affect what they decide about end-of-life treatments. Some patients and their family caregivers may want doctors to talk about spiritual concerns, but may feel unsure about how to bring up the subject. ', text: 'Spirituality in Cancer Care (PDQ)- Patient Version', url: 'https://www.cancer.gov/about-cancer/coping/day-to-day/faith-and-spirituality/spirituality-pdq'), 
        Resource(synopsis: 'Religion and spirituality have been shown to be significantly associated with measures of adjustment to cancer and with management of cancer symptoms in patients. Religious and spiritual coping have been associated with lower levels of patient discomfort as well as reduced hostility, anxiety, and social isolation in patients with cancer [1-4] and family caregivers.[5] Specific characteristics of strong religious beliefs, including hope, optimism, freedom from regret, and life satisfaction, have also been associated with improved adjustment in individuals diagnosed with cancer.', text: 'Spirituality in Cancer Care (PDQ)- Health Professionals Version', url: 'https://www.cancer.gov/about-cancer/coping/day-to-day/faith-and-spirituality/spirituality-hp-pdq#_18'), 
        Resource(synopsis: '', text: 'Spirituality and Quality of Life in Black Patients with Cancer Pain', url: 'https://doi.org/10.1016/j.jpainsymman.2018.05.020'), 
        Resource(synopsis: 'This study used qualitative methods to examine whether, and if so how, African American cancer survivors use spirituality in coping with the disease. Spirituality was defined using a model involving connectedness to self, others, a higher power, and the world.', text: 'Role of spirituality in cancer coping among African Americans: a qualitative examination', url: 'https://doi.org/10.1007%2Fs11764-008-0050-5')
      ],
      'More About Cancer':
      [
        Resource(synopsis: 'Learn about the different options available for cancer treatment, and find tips, tools, and resources to help you make your treatment decisions.', text: 'Cancer Support Community: Treatment Decisions', url: 'https://www.cancersupportcommunity.org/treatment-decisions'), 
        Resource(synopsis: 'If you’re receiving chemotherapy as a part of your cancer treatment, you’ve probably already learned a few tricks to make the experience easier.   Whether it’s carrying hard candies in your pocket to counteract nausea or bringing warm socks to stay comfortable during an infusion, most people learn these simple hacks by talking to their care teams or watching other patients. ', text: '10 things to avoid while receiving chemotherapy', url: 'https://www.mdanderson.org/cancerwise/10-things-to-avoid-while-receiving-chemotherapy.h00-159615489.html'), 
        Resource(synopsis: "Although your treatment has ended, you are still coping with how it affects your body. It can take time to get over the effects of cancer treatment. Each person's schedule is different. You may wonder how your body should feel during this time and what may be a sign that cancer is coming back. This section talks about some of the problems that can occur when treatment is over.", text: 'Your Body After Treatment', url: 'https://www.dana-farber.org/patient-family/survivors/caring-for-yourself-after-cancer/your-body-after-treatment'), 
        Resource(synopsis: 'When cancer treatment ends, people begin a new chapter in their lives, one that can bring hope and happiness, but also worries and fear. No two people are alike. Each person has their own way of coping and learning to manage these emotions. It will take time and practice.', text: 'Life After Cancer', url: 'https://www.cancer.org/cancer/survivorship/be-healthy-after-treatment/life-after-cancer.html'), 
        Resource(synopsis: 'Imagine one day going to the drugstore to pick up a cancer test the same way you would a pregnancy test. Open the box and inside you’d find a tool that can detect markers in your blood associated with tumor growth. Surprisingly, this scenario is closer to fact than science fiction: “We’re not too far away from something like that,” says John Carpten, Ph.D., a senior investigator and director of integrated cancer genomics at the Translational Genomics Research Institute in Phoenix.', text: 'Must Read Advice from Black Doctors on Preventing and Battling Cancer', url: 'https://www.essence.com/lifestyle/health-wellness/best-advice-black-doctors-cancer/')
      ],
      'Resources':
      [
        Resource(synopsis: 'The National Association of Black Oncologists, Inc. (NABOnc) is a national, federally recognized, non-profit organization. Formed and founded by healthcare professionals with an interest and passion for improving the health and quality of life of people of African origin (PAO),', text: 'National Association of Black Oncologists, INC', url: 'https://www.nabonc.org/'), 
        Resource(synopsis: 'Black women face an array of disparities when it comes to cancer care, from lack of representation in clinical trials to barriers to care, poorer outcomes, and higher mortality rates.', text: '7 of the Best Cancer Support Organizations for Black Women', url: 'https://www.everydayhealth.com/breast-cancer/the-best-cancer-support-organizations-for-black-women/'), 
        Resource(synopsis: 'This week (April 11-17) is National Minority Cancer Awareness Week! According to the American Cancer Society, minority groups in the United States continue to bear a greater cancer burden. However, there are many organizations that offer help to minorities affected by cancer. We’ve listed some of our most recommended organizations below.', text: 'Resources for National Minority Cancer Week ', url: 'https://www.cancercare.org/blog/resources-for-national-minority-cancer-awareness-week')
      ]
};


class Resources extends StatelessWidget {
  final String name;
  final List<Resource> urls;

  const Resources({
    super.key,
    required this.name,
    required this.urls,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      backgroundColor: myTheme.scaffoldBackgroundColor,
      body: ListView.builder(
        itemCount: urls.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Card(
              elevation: 4.0, // Adjust the elevation as needed
              child: ListTile(
                contentPadding: const EdgeInsets.all(16.0), // Adjust padding as needed
                title: Text(
                  urls[index].text,
                  style: TextStyle (
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.normal,
                  ),
                  textScaler: const TextScaler.linear(1.1),
                ),
                subtitle: Text(
                  urls[index].synopsis, // Add your synopsis text here
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Column(
                  children: [
                    Text('Read More'),
                    const Icon(Icons.arrow_forward),
                  ],
                ),
                onTap: () => launchUrlString(urls[index].url),
              ),
            ),
          );
        }
      )
    );
  }
}

class Resource {
  String text;
  String url;
  String synopsis;  

  Resource({required this.text, required this.url, required this.synopsis});
}


const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class Info_Hub_Rebuild extends StatelessWidget {
  const Info_Hub_Rebuild({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: ExampleParallax(),
        ),
      ),
    );
  }
}

class ExampleParallax extends StatelessWidget {
  const ExampleParallax({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final location in locations)
            LocationListItem(
              imageUrl: location.imageUrl,
              name: location.name,
              country: location.place,
              resources: location.resources,
              
            ),
        ],
      ),
    );
  }
}

class LocationListItem extends StatelessWidget {
  LocationListItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.country,
    required this.resources, 
  });

  final String imageUrl;
  final String name;
  final String country;
  final GlobalKey _backgroundImageKey = GlobalKey();
  final List<Resource> resources;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the Resources screen when tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resources(
              name: name,
              urls: resources,
            ),
          ),
        );
      },
      child: Padding (
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                _buildParallaxBackground(context),
                _buildGradient(),
                _buildTitleAndSubtitle(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: _backgroundImageKey,
      ),
      children: [
        Image.network(
          imageUrl,
          key: _backgroundImageKey,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            country,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);


  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxWidth,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    // Calculate the position of this list item within the viewport.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(
        listItemBox.size.centerLeft(Offset.zero),
        ancestor: scrollableBox);

    // Determine the percent position of this list item within the
    // scrollable area.
    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction =
        (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);

    // Calculate the vertical alignment of the background
    // based on the scroll percent.
    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final backgroundSize =
        (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
            .size;
    final listItemSize = context.size;
    final childRect =
        verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    // Paint the background.
    context.paintChild(
      0,
      transform:
          Transform.translate(offset: Offset(0.0, childRect.top)).transform,
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}

class Parallax extends SingleChildRenderObjectWidget {
  const Parallax({
    super.key,
    required Widget background,
  }) : super(child: background);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderParallax(scrollable: Scrollable.of(context));
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderParallax renderObject) {
    renderObject.scrollable = Scrollable.of(context);
  }
}

class ParallaxParentData extends ContainerBoxParentData<RenderBox> {}

class RenderParallax extends RenderBox
    with RenderObjectWithChildMixin<RenderBox>, RenderProxyBoxMixin {
  RenderParallax({
    required ScrollableState scrollable,
  }) : _scrollable = scrollable;

  ScrollableState _scrollable;

  ScrollableState get scrollable => _scrollable;

  set scrollable(ScrollableState value) {
    if (value != _scrollable) {
      if (attached) {
        _scrollable.position.removeListener(markNeedsLayout);
      }
      _scrollable = value;
      if (attached) {
        _scrollable.position.addListener(markNeedsLayout);
      }
    }
  }

  @override
  void attach(covariant PipelineOwner owner) {
    super.attach(owner);
    _scrollable.position.addListener(markNeedsLayout);
  }

  @override
  void detach() {
    _scrollable.position.removeListener(markNeedsLayout);
    super.detach();
  }

  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is! ParallaxParentData) {
      child.parentData = ParallaxParentData();
    }
  }

  @override
  void performLayout() {
    size = constraints.biggest;

    // Force the background to take up all available width
    // and then scale its height based on the image's aspect ratio.
    final background = child!;
    final backgroundImageConstraints =
        BoxConstraints.tightFor(width: size.width);
    background.layout(backgroundImageConstraints, parentUsesSize: true);

    // Set the background's local offset, which is zero.
    (background.parentData as ParallaxParentData).offset = Offset.zero;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // Get the size of the scrollable area.
    final viewportDimension = scrollable.position.viewportDimension;

    // Calculate the global position of this list item.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final backgroundOffset =
        localToGlobal(size.centerLeft(Offset.zero), ancestor: scrollableBox);

    // Determine the percent position of this list item within the
    // scrollable area.
    final scrollFraction =
        (backgroundOffset.dy / viewportDimension).clamp(0.0, 1.0);

    // Calculate the vertical alignment of the background
    // based on the scroll percent.
    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final background = child!;
    final backgroundSize = background.size;
    final listItemSize = size;
    final childRect =
        verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    // Paint the background.
    context.paintChild(
        background,
        (background.parentData as ParallaxParentData).offset +
            offset +
            Offset(0.0, childRect.top));
  }
}

class Location {
  const Location({
    required this.name,
    required this.place,
    required this.imageUrl,
    required this.resources,
  });

  final String name;
  final String place;
  final String imageUrl;
  final List<Resource> resources;
}

final locations = [
  Location(
    name: 'Physical Activity',
    place: 'Exercise improves quality of life',
    imageUrl: 'https://www.cdc.gov/cancer/survivors/healthy-living-guides/images/walking-outdoors-700-sq.jpg?_=35650',
    resources: urls['Physical Activity']!,
  ),
  Location(
    name: 'Nutrition',
    place: 'Fuel your soilders in the body',
    imageUrl: 'https://blackdoctor.org/wp-content/uploads/2023/10/doctor.jpg',
    resources: urls['Nutrition']!,
  ),
  Location(
    name: 'Spirituality',
    place: 'Emotion matters',
    imageUrl: 'https://drkeppy.com/wp-content/uploads/2022/04/spiritual-health.jpg',
    resources: urls['Spirituality']!,
  ),
  Location(
    name: 'More About Cancer',
    place: 'Post treatment, further support',
    imageUrl: 'https://res-1.cloudinary.com/sharecare/image/upload/c_fill,f_auto,w_640/v1648584148/articles/treatment-after-kidney-cancer-surgery',
    resources: urls['More About Cancer']!,
  ),
  Location(
    name: 'Resources',
    place: 'Organizations, Minor Groups',
    imageUrl: 'https://cdn.cancercenter.com/-/media/ctca/images/others/blogs/2021/02-february/blog-support-groups-l.jpg',
    resources: urls['Resources']!,
  ),
];