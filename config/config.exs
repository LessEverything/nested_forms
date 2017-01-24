# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :nested_forms,
  ecto_repos: [NestedForms.Repo]

# Configures the endpoint
config :nested_forms, NestedForms.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+FL6hICM64BUHY0iCdX5sKR5z/8PN8Riz9HjbUeAmMlqDNUspv79ZtTsvxjFE1pa",
  render_errors: [view: NestedForms.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NestedForms.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
