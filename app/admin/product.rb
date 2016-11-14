ActiveAdmin.register Product do
  permit_params :image

  form do |f|
    f.inputs "Upload" do
      f.input :name
      f.input :description
      f.input :price
      f.input :stock_quantity
      f.input :image, required: true, as: :file
    end
    f.actions
  end
end
