defmodule NestedForms.UserView do
  use NestedForms.Web, :view
  alias NestedForms.User
  alias NestedForms.Post

  def link_to_post_fields do
    changeset = User.changeset(%User{posts: [%Post{}]})
    form = Phoenix.HTML.FormData.to_form(changeset, [])
    fields = render_to_string(__MODULE__, "post_fields.html", f: form)
    link "Add Post", to: "#", "data-template": fields, id: "add_post"
  end
end
