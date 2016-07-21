# Challenge Server

Challenge API server for web/mobile clients

Things you may want to cover:

## Installaction

```
  $ git clone git@github.com:chalien/challenge_server.git
  $ bundle && rails db:setup
```

#### Specs
  - Rails 5
  - Docs with JSONAPI  and blueprint specification
  

## Development

Running Server

```
  rails s
```

## Testing 

Challenge uses Minitest [Expectations specification](http://ruby-doc.org/stdlib-2.1.0/libdoc/minitest/rdoc/MiniTest/Expectations.html). Also, it's using a gem named [Blueprint Agreement](https://github.com/charly-palencia/blueprint-agreement/) which uses a drakov server to mock the [docs files](https://github.com/chalien/challenge_server/blob/master/docs/challenge.apib) to validate the api specification 

### How to run test

#### Single Test
```
  ruby -Itest path/to/test 
```

#### Run all 

```
  bundle exec rake 
```

 
