$ ->
	chat = $.connection.chatHub

	chat.client.addMessage = (message) -> 
		$('#messages').append "<li>#{message}</li>"

	$.connection.hub.start().done ->
		$("#broadcast").click ->
			chat.server.send $('#msg').val()

