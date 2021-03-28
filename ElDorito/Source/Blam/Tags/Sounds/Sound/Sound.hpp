#pragma once

#include "Blam/Math/Bounds.hpp"

#include "Blam/Tags/Tags.hpp"

#include "Blam/Tags/Sounds/Sound/CustomPlayback.hpp"
#include "Blam/Tags/Sounds/Sound/ExtraInfo.hpp"
#include "Blam/Tags/Sounds/Sound/ImportTypeEnum.hpp"
#include "Blam/Tags/Sounds/Sound/Language.hpp"
#include "Blam/Tags/Sounds/Sound/PitchRange.hpp"
#include "Blam/Tags/Sounds/Sound/PlatformCodec.hpp"
#include "Blam/Tags/Sounds/Sound/PlaybackParameters.hpp"
#include "Blam/Tags/Sounds/Sound/Promotion.hpp"
#include "Blam/Tags/Sounds/Sound/SampleRateEnum.hpp"
#include "Blam/Tags/Sounds/Sound/Scale.hpp"

#include "Blam/Tags/Sounds/SoundClasses/SoundClassEnum.hpp"

#include "Blam/Text/StringID.hpp"

namespace Blam::Tags::Sounds
{
	struct Sound : TagGroup<'snd!'>
	{
		uint32_t Flags;
		uint32_t Unknown1;
		uint32_t IsDialogue;
		SoundClass SoundClass;
		SampleRate SampleRate;
		uint8_t Unknown2;
		ImportType ImportType;
		PlaybackParameters PlaybackParameters;
		Scale Scale;
		PlatformCodec PlatformCodec;
		Promotion Promotion;
		int32_t Unknown4;
		int32_t Unknown5;
		int32_t Unknown6;
		int32_t Unknown7;
		uint32_t TotalSampleSize;
		int32_t Unknown8;
		TagBlock<PitchRange> PitchRanges;
		TagBlock<CustomPlayback> CustomPlaybacks;
		TagBlock<ExtraInfo> ExtraInfos;
		TagBlock<Language> Languages;
		uint32_t Resource;
		uint32_t Padding;
	};
	TAG_STRUCT_SIZE_ASSERT(Sound, 0xD4);

	//
	// Tag related functions
	//

	Scale* GetScale(Sound* sound);

	PlaybackParameters* GetPlaybackParameters(Sound* sound);

	SampleRate GetSampleRate(Sound* sound);

	PitchRange* GetPitchRange(Sound* sound, int32_t index);

	Permutation* GetPermutation(PitchRange* pitchRange, int32_t index);

	PermutationChunk* GetPermutationChunk(Permutation* permutation, int32_t index);

	int32_t GetPitchRangeCount(Sound* sound);

	int32_t GetPermutationCount(PitchRange* pitchRange);
	
	int32_t GetPermutationChunkCount(Permutation* permutation);

	int8_t GetCompression(Sound* sound);

	int8_t GetLoadMode(Sound* sound);

	int8_t GetEncoding(Sound* sound);

	int32_t GetNextPermutationChunkIndex(Permutation* permutation, int32_t currentIndex);

	Math::Bounds<int16_t>* GetBendBounds(PitchRange* pitchRange);

}
