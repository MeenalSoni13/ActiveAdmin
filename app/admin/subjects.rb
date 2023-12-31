ActiveAdmin.register Subject do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, note_ids: []
  # Uncomment all parameters which should be permitted for assignment
  show title: 'My title' do
  h3 'you have' + pluralize(subject.notes.count, 'note') + 'for this subject'
  subject.notes.each do |note|
   div do 
    h1 note.title
    h4 link_to "[#{note.id}]: you created this note on #{note.created_at.strftime('%a %b %e, %Y at %I%M %p')}, admin_note_path(note)"
  end
 end
 
end
