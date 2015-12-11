json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :title, :due, :description, :course_id
  json.url assignment_url(assignment, format: :json)
end
