class MovieChoiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :movie, :summary
end
