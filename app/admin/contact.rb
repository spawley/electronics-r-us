ActiveAdmin.register_page "Did" do
    # ..
    collection_action :add_range, :method => :get do
    end
    collection_action :add_range, :method => :post do
    end
end

<%= semantic_form_for :range, :url => add_range_admin_dids_path do |f| %>
    <%= f.inputs :start, :end %>
    <%= f.buttons :commit %>
<% end %>
