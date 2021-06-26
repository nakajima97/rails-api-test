class ContentsController < ApplicationController
  def index
    contents = Contents.all
    render json: { status: 'SUCCESS', action: action_name, data: contents }
  end

  def create
    content = Content.new(params.require(:content).permit(:text))
    if content.save
      render json: { status: 'SUCCESS', action: action_name, data: content }
    else
      render json: { status: 'ERROR', action: action_name, data: content.errors }
    end
  end

  def show
    content = Content.new(params.require(:content).permit(:text))
    if content.save
      render json: { status: 'SUCCESS', action: action_name, data: content }
    else
      render json: { status: 'ERROR', action: action_name, data: content.errors }
    end
  end

  def show
    content = Content.find(params[:id])
    render json: { status: 'SUCCESS', action: action_name, data: content }
  end

  def update
    content = Content.find(params[:id])
    if content.update(params.require(:content).permit(:text))
      render json: { status: 'SUCCESS', action: action_name, data: content }
    else
      render json: { status: 'ERROR', action: action_name, data: content.errors }
    end
  end

  def destroy
    content = Contetn.find(params[:id])
    content.destroy
    render json: { status: 'SUCCESS', action: action_name, data: content }
  end
end
