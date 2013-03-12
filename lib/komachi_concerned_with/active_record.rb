#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

module KomachiConcernedWith
  module ActiveRecord
    extend ActiveSupport::Concern

    module ClassMethods
      def concerned_with(*concernes)
        concerns.each do |concern|
          require_dependency "#{name.underscore}/#{concern}"
          include concern.constantize
        end
      end
    end
  end
end

::ActiveRecord::Base.send :include, KomachiConcernedWith::ActiveRecord
