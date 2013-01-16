module InsurancePolicy

  module ActiveRecordExtensions

    def self.included( base )
      base.extend ActsMethods
    end

    module ActsMethods

      def insurance_policy( *args )
        unless included_modules.include? InstanceMethods
          self.class_eval { extend ClassMethods }
          include InstanceMethods
        end

        initialize_compositions( args )
      end
      alias_method :insurance_policies, :insurance_policy

    end

    module ClassMethods

      def initialize_compositions( attrs )
        attrs.each do |attr|
          composed_of attr,
                      :class_name => "InsurancePolicy::Policy",
                      :mapping => [["#{attr}_company", "company"],
                                   ["#{attr}_number", "number"],
                                   ["#{attr}_expires_on", "expires_on"]] #,
                      #:converter => :convert,
                      #:allow_nil => true
        end
      end

    end

    module InstanceMethods

    end

  end

end
