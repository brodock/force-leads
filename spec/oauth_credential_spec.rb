require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe ForceLeads::OauthCredential do

  subject { ForceLeads::OauthCredential.new }

  it { should respond_to :build_client }
end
