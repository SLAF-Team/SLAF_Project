class IdiomsController < ApplicationController
    def index
        @idioms = Idiom.all
    end
end
