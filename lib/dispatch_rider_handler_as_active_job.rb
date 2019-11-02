require "dispatch_rider_handler_as_active_job/version"

module DispatchRider
  module Handlers
    class Base < ActiveJob::Base
      def perform(*args)
	warn "DEPRECATED: you should just inherit directly from ActiveJob::Base and not use me."
        process(*args)
      end
    end
  end
end

