# Test

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix


### Malformed Response unable to be caught:
1. Run `iex -S mix phx.server`
2. Run the curl request via postman or curl:
```
curl \
    -X POST \
    -H "Content-Type: multipart/form-data; boundary=xYzZY" \
    -H "Host: localhost" \
    -H "Total-Route-Time: 0" \
    "http://localhost:4000/api/post_route"
```
