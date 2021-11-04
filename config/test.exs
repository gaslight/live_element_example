import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :live_element_example, LiveElementExampleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4001],
  server: true,
  secret_key_base: "maG1ieyFHpgdWmrdPm1+oVEAUzUpZ06sbJL/ha91JWYv0Yb0lzh46HuV2zpskA/x",
  server: false

# In test we don't send emails.
config :live_element_example, LiveElementExample.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

config :wallaby, otp_app: :live_element_example, base_url: "http://localhost:4001"

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
