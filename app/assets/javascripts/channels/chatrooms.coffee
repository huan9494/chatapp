App.chatrooms = App.cable.subscriptions.create "ChatroomsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    active_chatroom = $("[data-behavior='messages'][data-chatroom-id='#{data.chatroom_id}']")
    if active_chatroom.length > 0
    	active_chatroom.append(data.message)
    	$('#message_dialog').scrollTop($('#message_dialog').get(0).scrollHeight);
    else
    	$("[data-behavior='chatroom-link'][data-chatroom-id='#{data.chatroom_id}']").css("font-weight", "bold")
