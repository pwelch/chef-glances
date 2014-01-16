# @example Example usage
#   expect(chef_run).to install_python_pip('glances')
#
# @param [String] install_python_pip
#
# @return [ChefSpec::Matchers::ResourceMatcher]
#
def install_python_pip(resource_name)
  ChefSpec::Matchers::ResourceMatcher.new(:python_pip, :install, resource_name)
end
