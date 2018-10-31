use Mix.Config

config :phoenix_project, ecto_repos: [PhoenixProject.Repo]

import_config "#{Mix.env}.exs"
