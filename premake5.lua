project "GLFW"
    kind "StaticLib"
    language "C"
    warnings "off"
    targetdir ("Output/Bin/" .. outputdir .. "/%{prj.name}")
    objdir ("Output/Obj/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/context.c",
        "src/init.c",
        "src/input.c",
        "src/monitor.c",
        "src/vulkan.c",
        "src/window.c",
    }

    filter "system:windows"
        defines
        {
            "_GLFW_WIN32"
        }

        files
        {
            "src/win32_init.c",
            "src/win32_joystick.c",
            "src/win32_monitor.c",
            "src/win32_time.c",
            "src/win32_thread.c",
            "src/win32_window.c",
            "src/wgl_context.c",
            "src/egl_context.c",
            "src/osmesa_context.c"
        }

    filter "system:linux"
        defines
        {
            "_GLFW_X11"
        }

        files
        {
            "src/x11_init.c",
            "src/x11_monitor.c",
            "src/x11_window.c",
            "src/xkb_unicode.c",
            "src/posix_time.c",
            "src/posix_thread.c",
            "src/glx_context.c",
            "src/egl_context.c",
            "src/osmesa_context.c",
            "src/linux_joystick.c"
        }
