use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :watermelon, Watermelon.Repo,
  username: "postgres",
  password: "postgres",
  database: "watermelon_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :watermelon, teller_service: Watermelon.Banking.TellerServiceImplementation

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :watermelon, WatermelonWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
