#pragma once

#include "Blam/BlamPlayers.hpp"

#include "Blam/Math/RealVector3D.hpp"

#include "Patches/PlayerPropertiesExtension.hpp"

#include <string>
#include <vector>

namespace Game::Armor
{
	class ArmorExtension : public Patches::Network::PlayerPropertiesExtension<Blam::Players::PlayerCustomization>
	{
	protected:
		void BuildData(int playerIndex, Blam::Players::PlayerCustomization *out) override;
		void ApplyData(int playerIndex, Blam::Players::PlayerProperties *properties, const Blam::Players::PlayerCustomization &data) override;
		void Serialize(Blam::BitStream *stream, const Blam::Players::PlayerCustomization &data) override;
		void Deserialize(Blam::BitStream *stream, Blam::Players::PlayerCustomization *out) override;
	};

	void RefreshUiPlayer();
	void LoadArmorPermutations();
	bool CommandPlayerListRenderWeapons(const std::vector<std::string>& Arguments, std::string& returnInfo);
	void UpdateUiPlayerModelArmor();
	void SetUiPlayerModelTransform(const Blam::Math::RealVector3D* newPosition, const float* rotationAngle);
}
