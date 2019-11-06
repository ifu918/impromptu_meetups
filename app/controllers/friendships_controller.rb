class FriendshipsController < ApplicationController
  def index
    @q = Friendship.ransack(params[:q])
    @friendships = @q.result(:distinct => true).page(params[:page]).per(10)

    render("friendship_templates/index.html.erb")
  end

  def show
    @friendship = Friendship.find(params.fetch("id_to_display"))

    render("friendship_templates/show.html.erb")
  end

  def new_form
    @friendship = Friendship.new

    render("friendship_templates/new_form.html.erb")
  end

  def create_row
    @friendship = Friendship.new

    @friendship.friend_1_id = params.fetch("friend_1_id")
    @friendship.friend_2_id = params.fetch("friend_2_id")

    if @friendship.valid?
      @friendship.save

      redirect_back(:fallback_location => "/friendships", :notice => "Friendship created successfully.")
    else
      render("friendship_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @friendship = Friendship.find(params.fetch("prefill_with_id"))

    render("friendship_templates/edit_form.html.erb")
  end

  def update_row
    @friendship = Friendship.find(params.fetch("id_to_modify"))

    @friendship.friend_1_id = params.fetch("friend_1_id")
    @friendship.friend_2_id = params.fetch("friend_2_id")

    if @friendship.valid?
      @friendship.save

      redirect_to("/friendships/#{@friendship.id}", :notice => "Friendship updated successfully.")
    else
      render("friendship_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @friendship = Friendship.find(params.fetch("id_to_remove"))

    @friendship.destroy

    redirect_to("/friendships", :notice => "Friendship deleted successfully.")
  end
end
