defmodule NestedForms.Post do
  use NestedForms.Web, :model

  schema "posts" do
    field :body, :string
    belongs_to :user, NestedForms.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:body])
    |> validate_required([:body])
  end
end
