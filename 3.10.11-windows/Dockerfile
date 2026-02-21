FROM mcr.microsoft.com/windows/servercore:ltsc2022

SHELL ["cmd", "/S", "/C"]

RUN mkdir C:\\compiler
WORKDIR C:/compiler

# Copy the binaries and required files to the container
COPY files/ C:/compiler/

# Add pawncc to PATH
ENV PATH "C:\\compiler;${PATH}"

COPY entrypoint.bat C:/entrypoint.bat
ENTRYPOINT ["C:\\entrypoint.bat"]
