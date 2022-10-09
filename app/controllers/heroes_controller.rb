class HeroesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :hero_not_found
    def index
        heroes = Hero.all
        render json: heroes
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero
    end
    private
    def hero_not_found
        render json: { error: "Hero not found" }, status: 404
    end
end

