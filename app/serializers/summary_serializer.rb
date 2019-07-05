class SummarySerializer
  include FastJsonapi::ObjectSerializer
  attributes :content
  belongs_to :movie
end
