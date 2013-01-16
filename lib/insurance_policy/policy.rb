module InsurancePolicy

  class Policy

    attr_reader :company, :number, :expires_on

    def initialize( company, number, expires_on=nil )
      @company    = company
      @number     = number
      @expires_on = expires_on

      self.freeze
    end

    def expired?
      !expires_on.blank? && Time.zone.now >= expires_on
    end

    def description
      [company, number].reject( &:blank? ).
                        join( ' Policy No.: ' )
    end

    def to_s
      description
    end

  end

end
