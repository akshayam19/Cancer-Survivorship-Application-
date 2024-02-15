import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ResourceCategories extends StatelessWidget {
  final Map<String, Icon> categories;

  ResourceCategories({required this.categories});
  
  @override
  Widget build(BuildContext context) {
    Map<String, List<Resource>> urls = {
      'Physical Activity': 
      [ Resource(text: '6 Lifestyle Changes to Improve Your Cancer Care', url: 'https://www.cancer.net/blog/2018-09/6-lifestyle-changes-improve-your-cancer-care'), Resource(text: 'Physical Activity and the Person with Cancer', url :'https://www.cancer.org/cancer/survivorship/be-healthy-after-treatment/physical-activity-and-the-cancer-patient.html#:~:text=Start%20slowly%20and%20build%20up,least%202%20days%20per%20week'), Resource(text: 'Exercise During Cancer Treatment', url: 'https://www.cancer.net/survivorship/healthy-living/exercise-during-cancer-treatment'), Resource(text: 'Physical Activity Cancer Survivors', url: 'https://www.cdc.gov/cancer/survivors/healthy-living-guides/physical-health/physical-activity.htm'), Resource(text: 'Physical Activity and Cancer Care- A Review', url : 'https://doi.org/10.3390%2Fcancers14174154')]
    };

    List<Widget> categoryWidgets = [];
    categoryWidgets.add(
      SearchAnchor(
        builder: (BuildContext context, SearchController controller) {
          return SearchBar(
            controller: controller,
            padding: const MaterialStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 16.0)),
            onTap: () {
              controller.openView();
            },
            onChanged: (_) {
              controller.openView();
            },
            leading: const Icon(Icons.search),
          );
        }, 
        suggestionsBuilder:
          (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(5, (int index) {
              final String item = 'item $index';
              return ListTile(
                title: Text(item),
                onTap: () {
                  // setState(() {
                  //   controller.closeView(item);
                  // });
                },
              );
            });
          }),
    );
    for(var entry in categories.entries){
      categoryWidgets.add(
        OutlinedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<BeveledRectangleBorder>(BeveledRectangleBorder()),
            minimumSize: MaterialStatePropertyAll(Size(800, 100))
          ),
          onPressed: () => {
            Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resources(name: entry.key, urls: urls[entry.key]!),
                  ),
            )
          },
          child: Row(
            children: [Padding(
              padding: const EdgeInsets.only(left: 0),
              child: entry.value,
            ), Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(entry.key, textScaler: TextScaler.linear(1.25),),
            )] 
          ),
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: categoryWidgets
    );
  }
}

class Resources extends StatelessWidget {
  final String name;
  final List<Resource> urls;
  Resources({required this.name, required this.urls});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: ListView.builder(
        itemCount: urls.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top:5, bottom: 5),
            child: ListTile(
              title: Text(urls[index].text, textScaler: TextScaler.linear(1.1),),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => launchUrlString(urls[index].url),
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

  Resource({required this.text, required this.url});
}

class Info_Hub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResourceCategories(categories: const {
    'Physical Activity': Icon(Icons.fitness_center, size: 50),
    'Nutrition': Icon(Icons.fastfood, size: 50),
    'Spirituality': Icon(Icons.auto_awesome, size: 50),
    'Cancer-specific Information': Icon(Icons.info, size: 50),
    'Resources': Icon(Icons.library_books, size: 50)
    });
  }
}

