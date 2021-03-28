#pragma once

#include "Blam/Tags/Tags.hpp"

#include "Blam/Tags/Game/GameVariant.hpp"

#include "Blam/Text/StringID.hpp"

#include <cstdint>

namespace Blam::Tags::Game
{
	using Blam::Text::StringID;

	struct TerritoriesVariant : GameVariant
	{
		int Unknown58;
		int Unknown5C;
		int Unknown60;
		int Unknown64;
		int Unknown68;
	};
	TAG_STRUCT_SIZE_ASSERT(struct TerritoriesVariant, 0x6C);
}
