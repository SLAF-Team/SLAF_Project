class Admin::IdiomController < ApplicationController
    def index
        @idiom = Idiom.all
        @user = User.all
    end

    def show
        @idiom = Idiom.find(params[:id])
    end

    def update
        @idiom = Idiom.find(params[:id])
 
        if @idiom.update('title_en' => params[:title_en],
                        'title_fr' => params[:title_fr],
                        'body' => params[:body],
                        'example' => params[:example],
                        'validated' => true,
                        'grammatical_type' => params[:grammatical_type])
        redirect_to admin_idiom_path(@idiom.id)
        else
          render :edit
        end
    
    end

    def destroy
        Idiom.find(params[:id]).destroy
        redirect_to admin_idiom_index_path
    end

    def edit
        @idiom = Idiom.find(params[:id])
    end

end
