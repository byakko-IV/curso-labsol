module PostsHelper
  def show_links(post)
    if post.user_id == current_user.id
          "#{ link_to 'Eliminar', post, method: :delete, data: {confirm: "Desea eliminar el registro"}, class: 'btn btn-danger'}".html_safe +
           "#{link_to 'Editar', edit_post_path(post), class: 'btn btn-success'}".html_safe
           
    end
  end
end
