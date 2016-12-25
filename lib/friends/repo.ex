defmodule Friends.Repo do
  use Ecto.Repo, otp_app: :friends

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(Friends.Repo, [])
    ]
  end
end
