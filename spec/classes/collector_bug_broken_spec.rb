require 'spec_helper'

describe 'collector_bug::broken', :type => :class do
  let(:exported_resources) do
    [
      'collector_bug::resource' => { 'mock_host' => {} }
    ]
  end
  let(:params) do { :external_host => 'mock_host' } end

  it { should_not contain_notify('broken') }
end
