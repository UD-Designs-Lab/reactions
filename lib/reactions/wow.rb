require_relative '../reaction'

# module Reactions
#   class Wow < Reaction
#     def initialize(value = false)
#       @wow = value
#     end

#     def wow?
#       @wow
#     end

#     def wow=(value)
#       @wow = value
#       reset_other_reactions(:wow) if value
#     end
#   end
# end

module Reactions
  class Wow < Reaction
    def wow=(value)
      self.value = value
      reset_other_reactions(:wow)
    end

    private

    def reset_other_reactions(current_reaction)
      %i[like love smile celebrate sad angry].each do |reaction|
        next if reaction == current_reaction

        send("#{reaction}=", false)
      end
    end
  end
end
