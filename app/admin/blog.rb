ActiveAdmin.register Blog do
permit_params :title, :content

		show do |t|
			attributes_table do
				row :title
				row :content
				
			end
		end

		form :html => { :enctype => "multipart/form-data" } do |f|
			f.inputs do
				f.input :title
				f.input :content
				
			end
			f.actions
		end


end






