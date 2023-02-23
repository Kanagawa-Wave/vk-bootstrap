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