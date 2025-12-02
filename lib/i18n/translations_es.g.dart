///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.dart';

// Path: <root>
class TranslationsEs implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override String get lang => 'es';
	@override String get homeAppbarTitle => 'Bienvenido de regreso!';
	@override String get dashboardTitle => 'Esto es lo que está pasando hoy';
	@override String get dashboardSubtitle => 'Tienes 3 tareas pendientes y 2 notificaciones nuevas que requieren tu atención.';
	@override String get userCardT => 'Usuario';
	@override String get growthCardT => 'Crecimiento';
	@override String get performanceCardT => 'Rendimiento';
	@override String get activityCardT => 'Actividad';
	@override String get actionsCardT => 'Acciones';
	@override List<String> get cardsSubtitle => [
		'personaliza tu usuario.',
		'Los ingresos totales alcanzaron \$45,890 este trimestre, superando las proyecciones en un 8% con crecimiento constante.',
		'Todos los sistemas funcionan correctamente con un 99.8% de tiempo activo. El tiempo de respuesta promedio es de 245ms.',
		'La última actualización fue hace 5 minutos. Consulta tus transacciones más recientes e interacciones de usuarios aquí.',
		'Accede rápidamente a las funciones más utilizadas. Crea informes, gestiona usuarios o actualiza configuraciones en un clic.',
	];
	@override String get warningTitle => 'Advertencia de Límite de Almacenamiento';
	@override String get warningSubtitle => 'Te estás quedando sin espacio';
	@override String get warningMessage => 'Tu almacenamiento está al 85% de su capacidad. Por favor, elimina archivos innecesarios o actualiza tu plan para evitar interrupciones del servicio.';
	@override String get share => 'Compartir';
	@override String get settings => 'Configuracion';
	@override String get theme => 'Tema';
	@override String get langLabel => 'Idioma';
}

/// The flat map containing all translations for locale <es>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		return _flatMapFunction$0(path);
	}

	dynamic _flatMapFunction$0(String path) {
		switch (path) {
			case 'lang': return 'es';
			case 'homeAppbarTitle': return 'Bienvenido de regreso!';
			case 'dashboardTitle': return 'Esto es lo que está pasando hoy';
			case 'dashboardSubtitle': return 'Tienes 3 tareas pendientes y 2 notificaciones nuevas que requieren tu atención.';
			case 'userCardT': return 'Usuario';
			case 'growthCardT': return 'Crecimiento';
			case 'performanceCardT': return 'Rendimiento';
			case 'activityCardT': return 'Actividad';
			case 'actionsCardT': return 'Acciones';
			case 'cardsSubtitle.0': return 'personaliza tu usuario.';
			case 'cardsSubtitle.1': return 'Los ingresos totales alcanzaron \$45,890 este trimestre, superando las proyecciones en un 8% con crecimiento constante.';
			case 'cardsSubtitle.2': return 'Todos los sistemas funcionan correctamente con un 99.8% de tiempo activo. El tiempo de respuesta promedio es de 245ms.';
			case 'cardsSubtitle.3': return 'La última actualización fue hace 5 minutos. Consulta tus transacciones más recientes e interacciones de usuarios aquí.';
			case 'cardsSubtitle.4': return 'Accede rápidamente a las funciones más utilizadas. Crea informes, gestiona usuarios o actualiza configuraciones en un clic.';
			case 'warningTitle': return 'Advertencia de Límite de Almacenamiento';
			case 'warningSubtitle': return 'Te estás quedando sin espacio';
			case 'warningMessage': return 'Tu almacenamiento está al 85% de su capacidad. Por favor, elimina archivos innecesarios o actualiza tu plan para evitar interrupciones del servicio.';
			case 'share': return 'Compartir';
			case 'settings': return 'Configuracion';
			case 'theme': return 'Tema';
			case 'langLabel': return 'Idioma';
			default: return null;
		}
	}
}

