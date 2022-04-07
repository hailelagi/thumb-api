defmodule Thumb.Repo do
  use Ecto.Repo,
    otp_app: :thumb,
    adapter: Ecto.Adapters.Postgres
end
