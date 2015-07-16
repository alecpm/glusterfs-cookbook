include_recipe 'apt'

package 'python-software-properties' do
  action :install
end

execute 'add-apt-repository ppa:gluster/glusterfs-3.4 --yes' do
  action :run
  notifies :run, resources(:execute => 'apt-get update'), :immediately
end
