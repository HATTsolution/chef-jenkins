class ::Chef::Provider::HttpRequest < Chef::Provider
  def load_current_resource
    Chef::Log.debug("load_current_resource: #{@new_resource.inspect}")
    @rest = Chef::REST.new(@new_resource.url, nil, nil, :disable_gzip => true)
  end
end
