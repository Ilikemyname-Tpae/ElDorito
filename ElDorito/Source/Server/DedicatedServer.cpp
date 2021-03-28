#include "Blam/BlamNetwork.hpp"

#include "Modules/ModuleBase.hpp"

#include "Server/DedicatedServer.hpp"

#include <WS2tcpip.h>

namespace Server::DedicatedServer
{
	bool needToSetMode = false;

	void Init()
	{
		Blam::Network::SetLobbyType(Blam::eLobbyTypeMultiplayer);
		needToSetMode = true;
	}
	void Tick()
	{
		if (!needToSetMode) {
			if (Blam::Network::GetLobbyType() != Blam::eLobbyTypeMultiplayer) {
				Blam::Network::SetLobbyType(Blam::eLobbyTypeMultiplayer);
				needToSetMode = true;
			}
			return;
		}

		if (Blam::Network::GetLobbyType() == Blam::eLobbyTypeMultiplayer) {
			if (Blam::Network::SetNetworkMode(Blam::eNetworkModeSystemLink)) {
				needToSetMode = false;
			}
		}
	}
}
