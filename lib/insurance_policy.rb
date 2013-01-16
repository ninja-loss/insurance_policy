require "insurance_policy/version"

module InsurancePolicy

  autoload :ActiveRecordExtensions, "insurance_policy/active_record_extensions"
  autoload :Policy,                 "insurance_policy/policy"

end

ActiveRecord::Base.send( :include, InsurancePolicy::ActiveRecordExtensions ) if defined?( ActiveRecord::Base )
