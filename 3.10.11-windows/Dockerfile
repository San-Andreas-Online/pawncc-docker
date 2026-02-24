FROM mcr.microsoft.com/windows/servercore:ltsc2022

SHELL ["cmd", "/S", "/C"]

# Install Dependencies
RUN powershell -Command "Invoke-WebRequest -Uri https://aka.ms/vs/15/release/vc_redist.x86.exe -OutFile C:\vc_redist.x86.exe"
RUN powershell -Command "Start-Process C:\vc_redist.x86.exe -ArgumentList '/install','/quiet','/norestart' -Wait"
RUN powershell -Command "Remove-Item C:\vc_redist.x86.exe"

RUN mkdir C:\\compiler
WORKDIR C:/compiler

# Copy the binaries and required files to the container
COPY files/ C:/compiler/

# Add pawncc to PATH
ENV PATH "C:\\compiler;${PATH}"

COPY entrypoint.bat C:/entrypoint.bat
ENTRYPOINT ["C:\\entrypoint.bat"]