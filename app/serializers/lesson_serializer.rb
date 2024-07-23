class LessonSerializer 
  include JSONAPI::Serializer
    attributes :lesson, :topic, :link
end