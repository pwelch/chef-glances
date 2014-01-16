#
# Cookbook Name:: glances
# Recipe:: default
#

include_recipe 'python::default'

python_pip 'glances' do
  action :install
end

template node['glances']['conf_file'] do
  source 'glances.conf.erb'
  mode   '0644'
end
