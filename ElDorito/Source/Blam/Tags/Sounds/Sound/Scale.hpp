#pragma once

#include "Blam/Math/Bounds.hpp"

#include "Blam/Tags/Tags.hpp"

namespace Blam::Tags::Sounds
{
	struct Scale {
		Math::Bounds<float> GainModifier;
		Math::Bounds<int16_t> PitchModifier;
		Math::Bounds<float> SkipFractionModifier;
	};
	TAG_STRUCT_SIZE_ASSERT(Scale, 0x14);
}
