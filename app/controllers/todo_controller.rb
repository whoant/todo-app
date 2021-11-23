class TodoController < ApplicationController
	def index
		@todos = Todos.all
	end

	def new
		@todos = Todos.new
	end

	def create
		todos = Todos.new(todos_params)
		todos.status = true
		if todos.save
			redirect_to root_path, notice: "Create successfully"
		else
			render :new
		end
	end

	def show

	end

	def edit
		@todo = Todos.find(params[:id])
	end

	def update
		@todo = Todos.find(params[:id])

		if @todo.update_columns title: params[:title], status: params[:status]
			flash[:notice] = 'Todo updated!'
			redirect_to root_path
		else
			flash[:alert] = 'Fail to update todo'
			render :edit
		end
	end

	def destroy
		@todo = Todos.find(params[:id])
		if @todo.delete
			flash[:notice] = 'Todo deleted'
			redirect_to root_path
		else
			flash[:alert] = 'Todo could not be deleted'
			render :new
		end
	end

	private

	def todos_params
		params.require(:todos).permit(:title)
	end
end
