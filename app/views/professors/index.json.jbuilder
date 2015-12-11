json.array!(@professors) do |professor|
  json.extract! professor, :id, :firstname, :lastname, :department, :email, :location, :password, :course_id
  json.url professor_url(professor, format: :json)
end
