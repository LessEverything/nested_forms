defmodule NestedForms.Post do
  use NestedForms.Web, :model

  schema "posts" do
    field :body, :string
    field :delete, :boolean, virtual: true
    belongs_to :user, NestedForms.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:body, :delete])
    |> set_delete_action
    |> validate_required([:body])
  end

  defp set_delete_action(changeset) do
    if get_change(changeset, :delete) do
      %{changeset | action: :delete}
    else
      changeset
    end
  end
end
