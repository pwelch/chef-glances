# glances-cookbook

Installs the [glances monitoring tool](http://nicolargo.github.io/glances/)

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
