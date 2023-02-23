project "VkBootstrap"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/Binaries/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/Intermediates/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/VkBootstrap.h",
        "src/VkBootstrapDispatch.h",
        "src/VkBootstrap.cpp"
    }

    includedirs
    {
        "%{VULKAN_SDK}/Include"
    }

    filter "configurations:Debug"
        defines "_DEBUG"
        runtime "Debug"
        symbols "on"
    
    filter "configurations:Release"
        defines "_RELEASE"
        runtime "Release"
        optimize "on"
    
    filter "configurations:Dist"
        defines "_DIST"
        runtime "Release"
        optimize "on"