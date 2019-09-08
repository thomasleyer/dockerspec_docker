require 'dockerspec/serverspec'

describe 'dockerspec image' do

  describe docker_build(id: 'dockerspec_docker:latest') do
    its(:labels) { should include 'maintainer' => 'selecticon@googlemail.com' }
    its(:labels) { should include 'description' }
    its(:workdir) { should eq '/spec' }
    its(:arch) { should eq 'amd64' }
    its(:os) { should eq 'linux' }
  end
  describe docker_run('.', tag: 'dockerspec_docker:latest') do
    describe package('dockerspec') do
      it { should be_installed.by('gem') }
    end
  end
end
