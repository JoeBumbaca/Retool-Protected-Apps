SELECT
  translations.id as translation_id,
  translations.key,
  translations.en,
  translations.de,
  translations.app_uuid,
  json_build_object('key', translations.key, 'en', translations.en, 'de', translations.de, 'pl', translations.pl) AS translations_object
FROM x44_405_translations AS translations
WHERE translations.app_uuid::jsonb @> '["{{app_uuid}}"]'
ORDER BY id asc