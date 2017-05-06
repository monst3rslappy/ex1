class AddressBooksController < ApplicationController
  # GET /address_books
  # GET /address_books.json
  def index
    @address_books = AddressBook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @address_books }
    end
  end

  # GET /address_books/1
  # GET /address_books/1.json
  def show
    @address_book = AddressBook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @address_book }
    end
  end

  # GET /address_books/new
  # GET /address_books/new.json
  def new
    @address_book = AddressBook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @address_book }
    end
  end

  # GET /address_books/1/edit
  def edit
    @address_book = AddressBook.find(params[:id])
  end

  # POST /address_books
  # POST /address_books.json
  def create
    @address_book = AddressBook.new(params[:address_book])

    respond_to do |format|
      if @address_book.save
        format.html { redirect_to @address_book, notice: 'Address book was successfully created.' }
        format.json { render json: @address_book, status: :created, location: @address_book }
      else
        format.html { render action: "new" }
        format.json { render json: @address_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /address_books/1
  # PUT /address_books/1.json
  def update
    @address_book = AddressBook.find(params[:id])

    respond_to do |format|
      if @address_book.update_attributes(params[:address_book])
        format.html { redirect_to @address_book, notice: 'Address book was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @address_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_books/1
  # DELETE /address_books/1.json
  def destroy
    @address_book = AddressBook.find(params[:id])
    @address_book.destroy

    respond_to do |format|
      format.html { redirect_to address_books_url }
      format.json { head :ok }
    end
  end
end
