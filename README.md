my real estate project 


 <% if user_signed_in? %>
                <% if current_user.email == 'rami_a872000@yahoo.com' %>
                <%= link_to 'Edit your Publish property', edit_property_path(@property) %> |
                <%= link_to 'Delete your Publish property ', @property, method: :delete, data: { confirm: 'Are you sure?' },class:"btn btn-danger" %>
              <%end%>  
            <%end%>  
                



        <td><%= link_to 'reviews', reviews_path%></td>
        
        
        
        
        
        
        <%= form_for [ @property, @property.rmrms.build ], multipart: true do |f| %>
        
        
        
        <%if @user.reviews.create(params[:user_id] == current_user.id || current_user.email == 'rami_a872000@yahoo.com' %>

     
        <td><%= review.rev %></td>
        <td><%= review.user_id %></td>
        <td><%= review.property_id %></td>
        <td><%= link_to 'Show', review %></td>
        <td><%= link_to 'Edit', edit_review_path(review) %></td>
        <td><%= link_to 'Destroy', review, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      
    <% end %>
    
    
    
    
    
    
    mustafa
    <%if @user.reviews.create(params[:user_id] == current_user.id || current_user.email == 'rami_a872000@yahoo.com' %>