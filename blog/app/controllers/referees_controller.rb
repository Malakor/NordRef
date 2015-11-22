class RefereesController < ApplicationController
def new
end
def index
end
def create
  render plain: params[:referee].inspect
end
end
