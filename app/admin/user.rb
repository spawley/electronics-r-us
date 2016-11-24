ActiveAdmin.register User do
  permit_params :name, :address, :email, :province_id

  index do
    selectable_column
    id_column
    column :name
    column :address
    column :email
    column :province_id

    actions
  end

  form do |f|
    f.inputs "Upload" do
      f.input :name
      f.input :address
      f.input :email
      f.input :province_id, :selected => '1', :as => :select, :collection => Province.all.map{|u| ["#{u.name}", u.id]}
    end
    f.actions
  end
end
