require_relative 'view'
require_relative 'model'
class StatsController
    def initialize
        @model = StatsModel.new
        @view = StatsView.new
    end

    def run
        @view =  StatsView.new
        @view.greeting

        # puts "your choice: #{choice}"

        choice = 0
        until choice == 4
            choice = @view.menu
            case choice 
            when 1
            model = StatsModel.new
            nums = @view.read_numbers
            @model.insert(nums)
            when 2
            @view.display_numbers(@model.list)
            when 3
            @view.display_average(@model.average)
            when 4
            @view.quit
            end
        end
    end

end