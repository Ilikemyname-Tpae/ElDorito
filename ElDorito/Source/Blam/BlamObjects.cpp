#include "ElDorito.hpp"

#include "Blam/BlamObjects.hpp"

namespace Blam::Objects
{
	DataArray<ObjectHeader>& GetObjects()
	{
		return *ElDorito::Instance().GetMainTls(0x448).Read<DataArray<ObjectHeader>*>();
	}
}
