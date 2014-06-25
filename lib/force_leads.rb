module ForceLeads
  class InvalidCredentialError < RuntimeError; end
end

require 'restforce'
require 'force_leads/oauth_credential'
require 'force_leads/lead'
