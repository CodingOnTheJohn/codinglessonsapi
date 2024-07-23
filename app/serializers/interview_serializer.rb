class InterviewSerializer
  include JSONAPI::Serializer
    attributes :question, :topic, :link
end