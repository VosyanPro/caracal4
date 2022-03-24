class OrdersController < ApplicationController

def create
    Order.create(
        body: params[:oder][:body]
    )
end

def destroy
    @order = Order.find(params[:id])
    @order.destroy
end

def show
    @order = Order.find(params[:id])
    
          respond_to do |format|
            format.docx { headers["Content-Disposition"] = "attachment; filename=\"caracal.docx\"" }
        end
    end
end

def index
    @orders = Order.all
 end

def download
    
end


