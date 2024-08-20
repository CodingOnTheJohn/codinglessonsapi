class LessonSerializer 
  include JSONAPI::Serializer
    attributes :lesson, :topic, :link, :lesson_type
end