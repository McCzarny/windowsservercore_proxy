# windowsservercore_proxy
Base for windowsservercore docker image behind proxy.

1. Export proxy settings from host:
```reg export "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" proxy_settings.reg```

2. Add settings to container in Dockerfile:
```ADD proxy_settings.reg .```

3. Import settings in container:
```RUN regedit.exe /S proxy_settings.reg```

Credits:
dogtail9 from
https://forums.docker.com/t/connect-to-the-internet-from-a-windows-container-behind-a-http-proxy/41307/8
