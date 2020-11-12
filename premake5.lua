workspace "paardensprong-game"
	configurations { "Debug", "Release" }
	location "build"
	platforms {"x64"}

project "paardensprong-game"
	kind "ConsoleApp"
	language "C++"
    
	targetdir "bin/%{cfg.buildcfg}"

	files { "src/**.*", "assets/**.*" }

	postbuildcommands {
			"{mkdir} ../bin/%{cfg.buildcfg}/assets",
			"{copy} ../assets ../bin/%{cfg.buildcfg}/assets",	
			"{copy} ../vendor/SFML/bin/openal32.dll ../bin/%{cfg.buildcfg}"		
		}
	

	filter "configurations:*"
		defines { "SFML_STATIC" }
		includedirs { "vendor/SFML/include" }
		libdirs { "vendor/SFML/lib" }
		links
		{
			"opengl32",
			"openal32",
			"freetype",
			"winmm",
			"gdi32",
			"flac",
			"vorbisenc",
			"vorbisfile",
			"vorbis",
			"ogg",
			"ws2_32"
		}

	filter "configurations:Debug"
		defines { "DEBUG" }
		symbols "On"
		links
		{	
			"sfml-graphics-s-d",
			"sfml-window-s-d",
			"sfml-system-s-d",
			"sfml-audio-s-d",
			"sfml-network-s-d"
		}

	filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "On"
		links
		{	
			"sfml-graphics-s",
			"sfml-window-s",
			"sfml-system-s",
			"sfml-audio-s",
			"sfml-network-s"
		}

		