class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :status_error
       #POST
       def create
        hero_power = HeroPower.create!(hero_power_params)
        hero= Hero.find(params[:hero_id])
        render json: hero_power
       end

    private 

    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end

    def status_error
        render json: { error:  ["validation errors"]}
      end
end
