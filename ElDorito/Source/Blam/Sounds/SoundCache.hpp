#pragma once

#include "Blam/Math/Random.hpp"

#include "Blam/Memory/Align.hpp"
#include "Blam/Memory/DatumHandle.hpp"

#include "Blam/Sounds/SoundDatum.hpp"
#include "Blam/Sounds/SoundGlobals.hpp"

#include "Blam/Tags/Sounds/Sound/Sound.hpp"
#include "Blam/Tags/Sounds/SoundClasses/SoundClasses.hpp"

#include <math.h>

namespace Blam::SoundCache {

	using namespace Blam::Tags::Sounds;

	//0x65FCB0
	int32_t AllocateSound(int32_t SoundTagIndex, PermutationChunk *Chunk, uint32_t a3);

	//0x6602B0
	int32_t AllocateSoundInArray(int32_t SoundTagIndex, PermutationChunk *Chunk, int8_t *a3);
}
