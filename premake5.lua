project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("obj/" .. outputdir .. "/%{prj.name}")

    includedirs { "." }
    files {
        "imconfig.h",
        "imgui.cpp",
        "imgui.h",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_opengl3.cpp",
    }

    filter "system:windows"
        systemversion "latest"

    filter "system:linux"
        systemversion "latest"

        files {
            "backends/imgui_impl_glfw.h",
            "backends/imgui_impl_glfw.cpp",
            "backends/imgui_impl_opengl3.h",
            "backends/imgui_impl_opengl3.cpp"
        }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
