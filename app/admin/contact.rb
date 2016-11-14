ActiveAdmin.register_page "my_custom_page" do

  page_action :foo, method: :post do
    # do some logic using params['my_field']

  #  session[:my_key] = "555555555"


  end

  content do
    #session[:my_key] = "333333333"



    form url: "my_custom_page/foo", method: :post do |f|
      f.input :my_field, type: :text, name: 'my_field'
      f.input :submit, type: :submit
    end
  end

end



#action_item :add do
#  link_to "Add Event", "my_custom_page/foo", method: :post
#end
