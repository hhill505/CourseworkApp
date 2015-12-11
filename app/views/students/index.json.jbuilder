json.array!(@students) do |student|
  json.extract! student, :id, :firstname, :lastname, :major, :year, :netid, :email, :password
  json.url student_url(student, format: :json)
end
