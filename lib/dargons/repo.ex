defmodule Dargons.Repo do
  use Ecto.Repo,
    otp_app: :dargons,
    adapter: Ecto.Adapters.Postgres
end
