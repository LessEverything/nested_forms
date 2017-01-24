defmodule NestedForms.User do
  use NestedForms.Web, :model

  schema "users" do
    field :name, :string
    has_many :posts, NestedForms.Post

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> cast_assoc(:posts, required: true)
    |> validate_required([:name])
  end
end
