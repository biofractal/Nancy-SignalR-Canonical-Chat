using Nancy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SignalR_Chat.Modules
{
	public class Chat : NancyModule
	{
		public Chat()
		{
			Get["/"] = _ => View["Chat.html"];
		}
	}
}