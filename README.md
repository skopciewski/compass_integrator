# CompassIntegrator

[![Gem Version](https://badge.fury.io/rb/compass_integrator.svg)](http://badge.fury.io/rb/compass_integrator)

## Assumptions

* joins the `compass` and its components into project dependencies
* provides the tasks for the assets management
* provides the default compass config

## Installation

Add this line to your application's Gemfile:

    gem 'compass_integrator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install compass_integrator

## Usage

Add to project's Rakefile:
```
require 'compass_integrator'
```

and list available tasks:
```
rake -T
```

## Versioning

See [semver.org][semver]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[semver]: http://semver.org/
