///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'en'
	String get lang => 'en';

	/// en: 'Welcome back'
	String get homeAppbarTitle => 'Welcome back';

	/// en: 'Here's what's happening today'
	String get dashboardTitle => 'Here\'s what\'s happening today';

	/// en: 'You have 3 pending tasks that require your attention.'
	String get dashboardSubtitle => 'You have 3 pending tasks that require your attention.';

	/// en: 'User'
	String get userCardT => 'User';

	/// en: 'Growth'
	String get growthCardT => 'Growth';

	/// en: 'Performance'
	String get performanceCardT => 'Performance';

	/// en: 'Activity'
	String get activityCardT => 'Activity';

	/// en: 'Actions'
	String get actionsCardT => 'Actions';

	List<String> get cardsSubtitle => [
		'personalize your user',
		'Total revenue reached \$45,890 this quarter, exceeding projections by 8% with steady growth.',
		'All systems running smoothly with 99.8% uptime. Server response time averages 245ms.',
		'Last update was 5 minutes ago. View your most recent transactions and user interactions here.',
		'Access frequently used features quickly. Create reports, manage users, or update settings in one click.',
	];

	/// en: 'Storage Limit Warning'
	String get warningTitle => 'Storage Limit Warning';

	/// en: 'You're running low on space'
	String get warningSubtitle => 'You\'re running low on space';

	/// en: 'Your storage is 85% full. Please delete unnecessary files or upgrade your plan to avoid service interruption'
	String get warningMessage => 'Your storage is 85% full. Please delete unnecessary files or upgrade your plan to avoid service interruption';

	/// en: 'Share'
	String get share => 'Share';

	/// en: 'Settings'
	String get settings => 'Settings';

	/// en: 'Theme'
	String get theme => 'Theme';

	/// en: 'Laguage'
	String get langLabel => 'Laguage';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return _flatMapFunction$0(path);
	}

	dynamic _flatMapFunction$0(String path) {
		switch (path) {
			case 'lang': return 'en';
			case 'homeAppbarTitle': return 'Welcome back';
			case 'dashboardTitle': return 'Here\'s what\'s happening today';
			case 'dashboardSubtitle': return 'You have 3 pending tasks that require your attention.';
			case 'userCardT': return 'User';
			case 'growthCardT': return 'Growth';
			case 'performanceCardT': return 'Performance';
			case 'activityCardT': return 'Activity';
			case 'actionsCardT': return 'Actions';
			case 'cardsSubtitle.0': return 'personalize your user';
			case 'cardsSubtitle.1': return 'Total revenue reached \$45,890 this quarter, exceeding projections by 8% with steady growth.';
			case 'cardsSubtitle.2': return 'All systems running smoothly with 99.8% uptime. Server response time averages 245ms.';
			case 'cardsSubtitle.3': return 'Last update was 5 minutes ago. View your most recent transactions and user interactions here.';
			case 'cardsSubtitle.4': return 'Access frequently used features quickly. Create reports, manage users, or update settings in one click.';
			case 'warningTitle': return 'Storage Limit Warning';
			case 'warningSubtitle': return 'You\'re running low on space';
			case 'warningMessage': return 'Your storage is 85% full. Please delete unnecessary files or upgrade your plan to avoid service interruption';
			case 'share': return 'Share';
			case 'settings': return 'Settings';
			case 'theme': return 'Theme';
			case 'langLabel': return 'Laguage';
			default: return null;
		}
	}
}

