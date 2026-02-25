#include "script_component.hpp"

class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        magazines[] = {};
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3A_core"};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

class A3A
{
    #if __A3_DEBUG__
        #include "CfgFunctions.hpp"
    #endif
};

#if __A3_DEBUG__
#else
    #include "CfgFunctions.hpp"
#endif
