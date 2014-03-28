require './lib/activity'
require 'debugger'

class Select
  def for activities
    activities = find_first_start activities
    activities_to_do = select_set activities

    activities.each do
      activities.shift
      new_set = select_set activities
      activities_to_do = new_set if activities_to_do.length < new_set.length
    end

    activities_to_do
  end

  private

  def find_first_start activities
    activities.sort_by{|v| v.start_time}
  end

  def select_set activities
    activity_starting_first = activities.first

    activities_to_do = [activity_starting_first]

    activities.each do |a|
      if a.start_time >= activity_starting_first.end_time
        activities_to_do << a
        activity_starting_first = a
      end
    end

    activities_to_do
  end
end
