#pragma once
#define DLL_EXPORT

void Main();

#ifdef DLL_EXPORT
extern "C" __declspec(dllexport) void DllExport();
#endif

namespace hook
{
    void character_create();
    void character_list();
}
