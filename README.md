# lita-redis

The handler which sends any command to `Lita.redis`.

## Installation

Add lita-redis to your Lita instance's Gemfile:

``` ruby
gem 'lita-redis'
```

## Usage

``` ruby
route /^redis /, :send, command: true, restrict_to: :admins, help: {'redis COMMAND [ARG ...]' => 'Sends a COMMAND to Lita.redis with ARG.'}
```

You need to be in the admins group in lita-config.rb

``` ruby
config.robot.admins  = [YOUR_USER_ID]
```
