defmodule AppWeb.Repo do
  use Ecto.Repo,
    otp_app: :app_web,
    adapter: Ecto.Adapters.Postgres
end
