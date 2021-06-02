# frozen_string_literal: true

json.set! :@context, 'https://schema.org'
json.set! :@type, 'Course'
json.name language.name
# json.description strip_tags(language.description)
json.accessMode 'textOnVisual'
# json.commentCount messages_count
json.url language_url(language.slug)
# json.image shrine_image_url(course.current_build.image, type: :fill, width: 600, height: 400, extension: :png, fallback: 'fallback/course.png')
json.isAccessibleForFree true
json.provider do
  json.partial! 'schemas/organization', format: [:json]
end