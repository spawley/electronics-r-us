ActiveAdmin.register Product do
  permit_params :image, :category_id, :name, :description, :stock_quantity, :price

  form do |f|
    f.inputs 'Upload' do
      f.input :name
      f.input :description
      f.input :price
      f.input :stock_quantity
      f.input :category_id, selected: '1', as: :select, collection: Category.all.map { |u| [u.name.to_s, u.id] }
      f.input :image, required: true, as: :file
    end
    f.actions
  end
end
