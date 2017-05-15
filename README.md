my real estate project 


 <% if user_signed_in? %>
                <% if current_user.email == 'rami_a872000@yahoo.com' %>
                <%= link_to 'Edit your Publish property', edit_property_path(@property) %> |
                <%= link_to 'Delete your Publish property ', @property, method: :delete, data: { confirm: 'Are you sure?' },class:"btn btn-danger" %>
              <%end%>  
            <%end%>  
                
