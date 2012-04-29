ShinyHub.controllers :scenes do
  get :index do
    @scenes = Scene.asc :name
    render 'scenes/index'
  end
  
  get :show, with: :name do
    @scene = Scene.where(name: params[:name]).first
    render 'scenes/show'
  end
end
