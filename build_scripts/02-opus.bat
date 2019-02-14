IF EXISTS opus/win32/VS2015/Win32/Release/opus.lib (
    echo "Opus is already built"
) ELSE (
    echo "Building Opus..."
    git clone https://github.com/telegramdesktop/opus.git
    cd opus
    git checkout tdesktop
    cd win32/VS2015
    msbuild opus.sln /property:Configuration=Release /property:Platform="Win32"
)
