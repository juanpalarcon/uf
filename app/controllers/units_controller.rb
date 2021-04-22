class UnitsController < ApplicationController
    def uf 
    @unit =  Unit.find_by date: params[:date]
        
    render json: @unit.value
    end

    def value
   
    end

end
# class UnitsController::Unit
# end

rails g model client:string 

