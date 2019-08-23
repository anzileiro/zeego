defmodule Zeego.Repo do
  use Ecto.Repo,
    otp_app: :zeego,
    adapter: Ecto.Adapters.Postgres
end
