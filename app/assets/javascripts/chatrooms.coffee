$(document).on "turbolinks:load", ->
	$("#new_message").on "keypress", (event) ->
		if event && event.keyCode == 13
			event.preventDefault()
			$(this).submit()
	$('#message_dialog').scrollTop($('#message_dialog').get(0).scrollHeight);