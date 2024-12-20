@echo off
set "rootFolder=%cd%"

echo Moving directories to parent folder...
for /d %%D in (*) do (
    echo Moving directory: %%D
    if exist "..\%%D\" (
        echo Merging directory: %%D
        xcopy "%%D\*" "..\%%D\" /E /Y /I > nul
        rd /s /q "%%D"
    ) else (
        echo Moving directory: %%D
        move "%%D" ..\ > nul
    )
)

echo Moving files to parent folder...
for %%F in (*) do (
    if not "%%F" == "move-all.bat" (
        if not exist "%%F\" (
            echo Processing file: %%F
            if exist "..\%%F" (
                echo Merging/overwriting file: %%F
                copy /Y "%%F" "..\%%F" > nul
                del "%%F"
            ) else (
                echo Moving file: %%F
                move "%%F" ..\ > nul
            )
        )
    )
)

echo Changing to parent directory and removing original folder...
cd .. && rd /s /q "%rootFolder%"