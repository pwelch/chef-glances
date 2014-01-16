require 'spec_helper'

describe 'glances::default' do
  before(:each) do
    stub_command("/usr/bin/python -c 'import setuptools'").and_return(true)
  end

  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'includes the python::default recipe' do
    expect(chef_run).to include_recipe('python::default')
  end

  it 'installs the glances python pip package' do
    expect(chef_run).to install_python_pip 'glances'
  end

  it 'creates the glances.conf template file' do
    expect(chef_run).to create_template(chef_run.node['glances']['conf_file']).
      with(mode: '0644')
  end
end
