require 'psych'

module Psych
  class << self
    alias original_safe_load safe_load

    def safe_load(yaml, *args, **kwargs)
      kwargs[:aliases] = true unless kwargs.key?(:aliases)
      original_safe_load(yaml, *args, **kwargs)
    end
  end
end
