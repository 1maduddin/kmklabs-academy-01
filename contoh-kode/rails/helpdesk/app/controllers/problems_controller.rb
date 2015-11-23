class ProblemsController < ApplicationController

    def index
        @problems = Problem.paginate(page: params[:page])
    end


    def new
        @problem = Problem.new
    end

    def create
        att = params[:problem][:attachment]
        puts "Class dari attachment : #{att.class}"

        file_ext = File.extname(att.original_filename)
        new_file_name = SecureRandom.uuid


        p = Problem.new(problem_params)
        p.status = :new
        if p.save
            FileUtils.mkpath(Rails.root.join('public', 'problems', p.id.to_s, 'attachments'))
            File.open(Rails.root.join('public', 'problems', p.id.to_s, 'attachments', "#{new_file_name + file_ext}"), 'wb') do |f|
                f.write att.read
            end
            flash[:notice] = "Problem #{p.title} sudah tersimpan"
            redirect_to action: "index"
        else
            render "new"
        end
    end

    def edit
        @problem = Problem.find(params[:id])
    end

    def update
        p = Problem.find(params[:id])
        if p.update(problem_params)
            flash[:notice] = "Problem #{p.title} sudah tersimpan"
            redirect_to action: "index"
        else    
            render "edit"
        end
    end

    private
        
        def problem_params
            params.require(:problem).permit(:title, :description, :status, :user_id, :product_id, :attachment)
        end

end
