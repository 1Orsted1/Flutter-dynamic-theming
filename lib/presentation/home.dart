import 'package:dynamic_theme_app/i18n/translations.dart';
import 'package:dynamic_theme_app/presentation/settings.dart';
import 'package:dynamic_theme_app/theme/extensions/hero_text_style.dart';
import 'package:dynamic_theme_app/theme/extensions/hero_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final heroTheme = Theme.of(context).extension<HeroTheme>();
    final heroTextStyle = Theme.of(context).extension<HeroTextStyle>();

    //Todo replace this with slang
    List<String> awesomeTitles = [
      t.userCardT,
      t.growthCardT,
      t.performanceCardT,
      t.activityCardT,
      t.actionsCardT,
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(t.homeAppbarTitle),
        actions: [
          IconButton(
            //onPressed: () => toggleThemeMode(),
            onPressed: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Setting())),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(t.dashboardTitle),
                      Text(
                        t.dashboardSubtitle,
                        //"Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. ",
                      ),
                      SizedBox(height: 20),
                      Card(
                        shape: Border.all(style: BorderStyle.none),
                        color: heroTheme?.background,
                        shadowColor: heroTheme?.shadeColor,
                        elevation: 20,
                        child: ListTile(
                          title: Text(
                            t.warningTitle,
                            style: heroTextStyle?.heroTitle.copyWith(
                              color: heroTheme?.textTitle,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                t.warningSubtitle,
                                style: heroTextStyle?.heroSubtitle.copyWith(
                                  color: heroTheme?.textContent,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                t.warningMessage,
                                style: heroTextStyle?.heroMessage.copyWith(
                                  color: heroTheme?.textContent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SliverGrid.builder(
                  itemCount: awesomeTitles.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    final title = awesomeTitles[index];
                    return Card(
                      child: InkWell(
                        child: ListTile(
                          title: Text(title),
                          subtitle: Text(
                            t.cardsSubtitle[index],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                        ),
                        onTap: () {
                          if (kDebugMode) {
                            print(title);
                          }
                        },
                      ),
                    );
                  },
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print("Hello there :D !!");
                        },
                        child: Text(t.share),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
