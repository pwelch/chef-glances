[![Build Status](https://secure.travis-ci.org/pwelch/chef-avahi.png)](http://travis-ci.org/pwelch/chef-glances)
[![Dependency Status](https://gemnasium.com/pwelch/chef-avahi.png)](https://gemnasium.com/pwelch/chef-glances)

## Description
Chef Cookbook to install the [Glances Monitoring Tool](http://nicolargo.github.io/glances/)

## Usage

### glances::default

Include `glances` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[glances::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## Future Features

- Add tunables to configuration file.
- Add support for other platforms. 
