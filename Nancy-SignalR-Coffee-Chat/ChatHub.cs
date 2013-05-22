using Microsoft.AspNet.SignalR;

namespace SignalR_Chat
{
	public class ChatHub : Hub
	{
		public void Send(string name, string message)
		{
			Clients.All.broadcastMessage(name, message);
		}
	}
}