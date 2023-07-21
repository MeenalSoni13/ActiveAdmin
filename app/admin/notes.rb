ActiveAdmin.register Note do

  permit_params :title, :body, :subject_id

  form title: "Notes App" do |f|
    f.input :subject
    f.input :title
    f.input :body
  end 
  f.action   
end
