using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

namespace SignalR_Chat
{
	public class ChatHub : Hub
	{
		public void Send(string message)
		{
			Clients.All.addMessage(message);
		}
	}
}