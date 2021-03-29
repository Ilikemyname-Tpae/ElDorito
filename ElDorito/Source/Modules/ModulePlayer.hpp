#pragma once

#include "Modules/ModuleBase.hpp"

namespace Modules
{
	class ModulePlayer : public Utils::Singleton<ModulePlayer>, public ModuleBase
	{
	public:
		Command* VarArmorSpartanHelmet;
		Command* VarArmorSpartanChest;
		Command* VarArmorSpartanRightShoulder;
		Command* VarArmorSpartanLeftShoulder;
		Command* VarArmorSpartanArms;
		Command* VarArmorSpartanLegs;
		Command* VarArmorSpartanPelvis;
		Command* VarArmorSpartanUpperBody;
		Command* VarArmorEliteHelmet;
		Command* VarArmorEliteChest;
		Command* VarArmorEliteRightShoulder;
		Command* VarArmorEliteLeftShoulder;
		Command* VarArmorEliteArms;
		Command* VarArmorEliteLegs;
		Command* VarArmorElitePelvis;
		Command* VarArmorEliteUpperBody;
		Command* VarRenderWeapon;

		Command* VarColorsPrimary;
		Command* VarColorsSecondary;
		Command* VarColorsVisor;
		Command* VarColorsLights;
		Command* VarColorsHolo;

		Command *VarRepresentation;

		Command* VarPlayerName;
		Command* VarPlayerGender;
		Command* VarPlayerServiceTag;
		Command* VarPlayerPrivKey;
		Command* VarPlayerPubKey;

		wchar_t UserName[17];

		ModulePlayer();

		static bool ValidServiceTag(const std::string &serviceTag);
	};
}
