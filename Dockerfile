FROM microsoft/windowsservercore

ADD ./proxy_settings.reg .
RUN regedit.exe /S proxy_settings.reg
