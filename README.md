# John's Add-on Repository

This is a custom add-on repository for [Home Assistant](https://www.home-assistant.io/), containing a single add-on that wraps the [jdholtz/auto-southwest-check-in](https://hub.docker.com/r/jdholtz/auto-southwest-check-in) Docker container. It allows you to automatically check in for your Southwest flights and optionally send notifications via Pushover.

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.][(https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2johnser%2Fha-repo)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fjohnser%2Fha-repo)

---

## Add-ons

### [Auto Southwest Check-In](./auto_southwest_check_in)

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

Automatically checks in to Southwest flights using the `jdholtz/auto-southwest-check-in` image.  
You can configure your Southwest credentials, flight confirmation number, Pushover user/app keys, and time zone right in Home Assistant.

---

## How to Add This Repository to Home Assistant

1. In Home Assistant, navigate to **Settings** > **Add-ons** > **Add-on Store**.
2. Click the **...** (three-dot) menu in the top-right and select **Repositories**.
3. Enter the URL of this GitHub repository (e.g., `https://github.com/YOUR_USERNAME/auto-southwest-check-in-repo`) and click **Add**.
4. You should now see "Auto Southwest Check-In Add-on Repository" appear in your list of repositories.
5. Click on it to find the **Auto Southwest Check-In** add-on. Click **Install** to add it to your Home Assistant.
6. Configure the add-on (Southwest credentials, Pushover keys, etc.), then **Start** the add-on.

Check the **Log** tab to see the output and confirm everything is working correctly.

---

## Repository Structure

```txt
auto-southwest-check-in-repo/
├─ repository.json       <-- Defines the repository metadata for Home Assistant
├─ README.md            <-- This file
└─ auto_southwest_check_in/
   ├─ config.json       <-- Add-on configuration (metadata, schema)
   ├─ Dockerfile        <-- Docker instructions to build the add-on image
   └─ run.sh            <-- Script that reads config and runs the auto check-in script
