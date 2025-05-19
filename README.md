# IDPS-suricata
...

# Running

To run the application, you need root privileges as Suricata requires access to network interfaces:

1. Make sure the start script is executable:
   ```bash
   chmod +x start
   ```

2. Execute the application with sudo:
   ```bash
   sudo ./start
   ```

3. The application will initialize Suricata and begin monitoring network traffic according to your configured rules.

If you encounter permission issues, ensure you have the necessary privileges and that all dependencies are correctly installed.
