module MyForwadable
  def def_delegator(accessor, method, ali = method)
    module_eval(<<~FORWADABLE)
      def #{ali}(*args)
        #{accessor}.#{method}(*args)
      end
    FORWADABLE
  end

  def def_delegators(accessor, *methods)
    methods.each do |method|
      def_delegator(accessor, method)
    end
  end
end
