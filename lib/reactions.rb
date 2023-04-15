# frozen_string_literal: true

require_relative "reactions/version"

require_relative "reactions/like"
require_relative "reactions/love"
require_relative "reactions/smile"
require_relative "reactions/celebrate"
require_relative "reactions/wow"
require_relative "reactions/sad"
require_relative "reactions/angry"

module Reactions
  class Error < StandardError; end

  class Reaction
    def self.reactions
      [Like, Love, Smile, Celebrate, Wow, Sad, Angry]
    end
  end
end
