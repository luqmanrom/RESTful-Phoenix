# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config


config :busi_api, BusiApiWeb.Auth.Guardian,
  issuer: "busi_api",
  secret_key: "0QZ9rVDwVrbdD6fi3d1g9L6QCVNjBFRcv1ZgEYW7hqFFN3mJWOnrjVVmGXXpE2TI"

# General application configuration
config :busi_api,
  ecto_repos: [BusiApi.Repo]

# Configures the endpoint
config :busi_api, BusiApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MLXUSpymjtX1pkguSi5KBIDzeCkL7QvTBeDhFweQSTgg4neZ0NPkOlofehYAH1iQ",
  render_errors: [view: BusiApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: BusiApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]



# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
