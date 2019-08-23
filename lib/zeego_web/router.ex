defmodule ZeegoWeb.Router do
  use ZeegoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/v1/users", ZeegoWeb do
    pipe_through :api

    get "/", UserController, :index
    post "/", UserController, :create
    get "/:id", UserController, :show
    put "/:id", UserController, :update
    delete "/:id", UserController, :delete

  end

end
