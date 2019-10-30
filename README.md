# Aptible::Comply

Ruby client for [compliance-os-dashboard.aptible.com](https://compliance-os-dashboard.aptible.com/). The Comply server is built on top of [HAL+JSON](http://tools.ietf.org/html/draft-kelly-json-hal-06), and so this client is just a thin layer on top of the [HyperResource](https://github.com/gamache/hyperresource) gem.

## Installation

Add the following lines to your application's Gemfile.

    gem 'aptible-comply'

And then run `bundle install`.

## Usage

First, get a token:

```ruby
token = Aptible::Auth::Token.create(email: 'user0@example.com', password: 'password')
```

From here, you can interact with the Comply server:

```ruby
comply = Aptible::Comply::Agent.new(token: token)
protocol = comply.protocols.first
protocol.procedures.count
# => 356
procedure = protocol.procedures.first
# => "Obtain and review IT acquisition policy and procedures..."
procedure.criteria.count
# => 1
criterion = procedure.criteria.first
criterion.name
# => "Policy Manual"
```

To work with organization-specific evidence (i.e., documents and events), you may pass `:organization` as a parameter in any initializer. For example:

```ruby
organization = Aptible::Auth::Organization.all(token: token).first
comply = Aptible::Comply::Agent.new(token: token, organization: organization)
criterion = comply.protocols.first.procedures.first.criteria.first
criterion.documents.count
# => 1
document = criterion.create_document!(
  print_version: 'http://knowyourmeme.com/photos/11296-success'
)
document.print_version.href
# => "http://knowyourmeme.com/photos/11296-success"
document.expires_at
# => 2015-07-08 00:10:31 UTC
```

## Configuration

| Parameter | Description | Default |
| --------- | ----------- | --------------- |
| `root_url` | Root URL of the Comply server | `ENV['COMPLY_ROOT_URL']` or [https://compliance-os-dashboard.aptible.com](https://compliance-os-dashboard.aptible.com) |

To point the client at a different server (e.g., during development), add the following to your application's initializers (or set the `COMPLY_ROOT_URL` environment variable):

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

