class ProblemsController < ApplicationController

    def index
        @problems = Problem.paginate(page: params[:page])
    end


    def new
        @problem = Problem.new
    end

    def create
        p = Problem.new(problem_params)
        p.status = :new
        if p.save
            flash[:notice] = "Problem #{p.title} sudah tersimpan"
            redirect_to action: "index"
        else
            render "new"
        end
    end

    private
        
        def problem_params
            params.require(:problem).permit(:title, :description, :status, :user_id, :product_id)
        end

end
