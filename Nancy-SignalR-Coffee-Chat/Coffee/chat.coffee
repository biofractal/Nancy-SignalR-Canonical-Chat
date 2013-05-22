$ ->
	chat = $.connection.chatHub
	$msg = $('#message')
	$name = $('#displayname')

	$name.val prompt 'Enter your name:'
	$msg.focus()
	$.connection.hub.start().done ->
		$('#sendmessage').click ->
			chat.server.send $name.val(), $msg.val()
			$msg.val('').focus()

	chat.client.broadcastMessage = (name, message) ->
		encodedName = $('<div />').text(name).html()
		encodedMsg = $('<div />').text(message).html()
		msgClass = if $name.val()==name then 'alert-success' else 'alert-info'
		$('#discussion').append("<blockquote class=\"#{msgClass}\" style=\"padding:10px;margin-bottom:10px;\"><strong>#{encodedName}</strong>:&nbsp;&nbsp;#{encodedMsg}</blockquote>")
