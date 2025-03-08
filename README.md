# Auto Southwest Check-In Home Assistant Add-on Repository

This repository hosts a custom Home Assistant add-on that wraps 
the [jdholtz/auto-southwest-check-in](https://hub.docker.com/r/jdholtz/auto-southwest-check-in) 
Docker image, allowing you to automatically check in for your Southwest flights.

## How to Use

1. Go to **Settings** > **Add-ons** > **Add-on Store** in Home Assistant.
2. Click the **...** (three dots) in the top-right corner and select **Repositories**.
3. Enter `https://github.com/johnser/ha-repo` and click **Add**.
4. Look for **“Auto Southwest Check-In Add-on Repository”**, open it, and install the add-on.
5. Configure your Southwest credentials, Pushover keys, and timezone under the add-on Configuration tab.
6. Start the add-on. Check the **Log** to ensure everything is running correctly.

### Repository Structure

```txt
ha-repo/
├─ repository.yaml
├─ README.md
└─ auto_southwest_check_in/
   ├─ config.yaml
   ├─ Dockerfile
   └─ run.sh
