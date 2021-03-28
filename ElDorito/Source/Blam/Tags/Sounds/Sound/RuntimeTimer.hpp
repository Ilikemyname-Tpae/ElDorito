#pragma once

#include "Blam/Math/Bounds.hpp"

#include "Blam/Tags/Tags.hpp"

namespace Blam::Tags::Sounds
{
	struct RuntimeTimer
	{
		int32_t Unknown;
	};
	TAG_STRUCT_SIZE_ASSERT(RuntimeTimer, 0x4);
}
