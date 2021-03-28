#pragma once

#include "Blam/Tags/Tags.hpp"

#include "Blam/Tags/Game/GameVariant.hpp"

#include "Blam/Text/StringID.hpp"

#include <cstdint>

namespace Blam::Tags::Game
{
	using Blam::Text::StringID;

	struct SandboxVariant : GameVariant
	{
		int Unknown58;
		int Unknown5C;
		int Unknown60;
	};
	TAG_STRUCT_SIZE_ASSERT(struct SandboxVariant, 0x64);
}
