# frozen_string_literal: true
module Stupidedi
  module Versions
    module FunctionalGroups
      module FiftyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          ENT = s::SegmentDef.build(:ENT, "Identifiers",
            "To provide information on patients",
            e::E554.simple_use(r::Optional, s::RepeatCount.bounded(1)),
            e::E98.simple_use(r::Optional, s::RepeatCount.bounded(1)),
            e::E66.simple_use(r::Optional, s::RepeatCount.bounded(1)),
            e::E67.simple_use(r::Optional, s::RepeatCount.bounded(1)))
        end
      end
    end
  end
end

