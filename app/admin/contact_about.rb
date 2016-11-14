ActiveAdmin.register_page "Contact and About Pages" do

  page_action :foo, method: :post do
    # do some logic using params['my_field']
    #  session[:my_key] = "555555555"
  end

  content do
    #session[:my_key] = "333333333"

    form action: "contact/set_text", method: :post do |f|
      f.label "Contact Page Text"
      f.input :my_field, type: :text, name: 'my_field'
      f.input :submit, type: :submit
      div do
        h3 ""
      end
    end

    form action: "about/set_text", method: :post do |f|
      f.label "About Page Text:"
      f.input :my_field, type: :text, name: 'my_field'
      f.input :submit, type: :submit
    end
  end

end



#action_item :add do
#  link_to "Add Event", "my_custom_page/foo", method: :post
#end
