project "nativefiledialog"
  kind "StaticLib"
  language "C++"
  location ""
  cppdialect "C++20"
  architecture "x64"

  includedirs {
    "src/include"
  }

  -- common files
  files {
    "src/*.h",
    "src/include/*.h",
    "src/nfd_common.c",
    "src/nfd_win.cpp"
  }

  -- visual studio filters
filter "action:vs*"
  defines { "_CRT_SECURE_NO_WARNINGS" }      
filter {"configurations:Debug"}
  buildoptions {"/MDd"}
    
filter {"configurations:Release"}
    buildoptions {"/DT"}


