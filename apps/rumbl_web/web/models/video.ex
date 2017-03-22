defmodule RumblWeb.Video do
  use RumblWeb.Web, :model

  schema "videos" do
    field :url, :string
    field :title, :string
    field :description, :string
    belongs_to :user, RumblWeb.User
    belongs_to :category, RumblWeb.Category

    timestamps()
  end

  @required_fields ~w(url title description)
  @optional_fields ~w(category_id)

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @required_fields, @optional_fields)
  end
end
