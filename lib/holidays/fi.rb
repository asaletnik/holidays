# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/fi.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/fi'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module FI # :nodoc:
    DEFINED_REGIONS = [:fi]

    HOLIDAYS_BY_MONTH = {
      5 => [{:mday => 1, :name => "Vappu", :regions => [:fi]}],
      0 => [{:function => lambda { |year| Holidays.easter(year)-2 }, :function_id => "easter(year)-2", :name => "Pitkäperjantai", :regions => [:fi]},
            {:function => lambda { |year| Holidays.easter(year) }, :function_id => "easter(year)", :name => "Pääsiäispäivä", :regions => [:fi]},
            {:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :name => "2. Pääsiäispäivä", :regions => [:fi]},
            {:function => lambda { |year| Holidays.easter(year)+39 }, :function_id => "easter(year)+39", :name => "Helatorstai", :regions => [:fi]},
            {:function => lambda { |year| Holidays.easter(year)+49 }, :function_id => "easter(year)+49", :name => "Helluntaipäivä", :regions => [:fi]},
            {:function => lambda { |year| Holidays.fi_pyhainpaiva(year) }, :function_id => "fi_pyhainpaiva(year)", :name => "Pyhäinpäivä", :regions => [:fi]}],
      6 => [{:function => lambda { |year| Holidays.fi_juhannuspaiva(year) }, :function_id => "fi_juhannuspaiva(year)", :name => "Juhannuspäivä", :regions => [:fi]}],
      1 => [{:mday => 1, :name => "Uudenvuodenpäivä", :regions => [:fi]},
            {:mday => 6, :name => "Loppiainen", :regions => [:fi]}],
      12 => [{:mday => 6, :name => "Itsenäisyyspäivä", :regions => [:fi]},
            {:mday => 24, :name => "Jouluaatto", :regions => [:fi]},
            {:mday => 25, :name => "Joulupäivä", :regions => [:fi]},
            {:mday => 26, :name => "Tapaninpäivä", :regions => [:fi]}]
    }
  end

# Finland: All Saint's Day (Saturday between Oct 31 and Nov 6)
def self.fi_pyhainpaiva(year)
  date = Date.civil(year,10,31)
  date += (6 - date.wday)
  date
end


# Finland: Mid-summer (Saturday between June 20–26)
def self.fi_juhannuspaiva(year)
  date = Date.civil(year,6,20)
  date += (6 - date.wday)
  date
end



end

Holidays.merge_defs(Holidays::FI::DEFINED_REGIONS, Holidays::FI::HOLIDAYS_BY_MONTH)
