module Inatra
  class << self
    def routes
    end

    def call(env)
      [200, {}, ['Hello World']]
    end
  end
end
