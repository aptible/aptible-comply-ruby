# Aptible::Comply

Ruby client for [comply.aptible.com](https://comply.aptible.com/). The Comply server is built on top of [HAL+JSON](http://tools.ietf.org/html/draft-kelly-json-hal-06), and so this client is just a thin layer on top of the [HyperResource](https://github.com/gamache/hyperresource) gem.

## Installation

Add the following lines to your application's Gemfile.

    gem 'aptible-comply'

And then run `bundle install`.

## Usage

First, get a token:

```ruby
token = Aptible::Auth::Token.create(email: 'user0@example.com', password: 'password')
```

From here, you can interact with the Comply server.

## Configuration

| Parameter | Description | Default |
| --------- | ----------- | --------------- |
| `root_url` | Root URL of the Comply server | `ENV['APTIBLE_COMPLY_ROOT_URL']` or [https://comply-api.aptible.com](https://comply-api.aptible.com) |

To point the client at a different server (e.g., during development), add the following to your application's initializers (or set the `APTIBLE_COMPLY_ROOT_URL` environment variable):

```ruby
Aptible::Comply.configure do |config|
  config.root_url = 'http://some.other.url'
end
```

## Contributing

1. Fork the project.
1. Commit your changes, with specs.
1. Ensure that your code passes specs (`rake spec`) and meets Aptible's Ruby style guide (`rake rubocop`).
1. Create a new pull request on GitHub.

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2019 [Aptible](https://www.aptible.com) and contributors.

