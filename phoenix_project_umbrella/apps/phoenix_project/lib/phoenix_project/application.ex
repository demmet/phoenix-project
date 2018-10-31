defmodule PhoenixProject.Application do
  @moduledoc """
  The PhoenixProject Application Service.

  The phoenix_project system business domain lives in this application.

  Exposes API to clients such as the `PhoenixProjectWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(PhoenixProject.Repo, []),
    ], strategy: :one_for_one, name: PhoenixProject.Supervisor)
  end
end
