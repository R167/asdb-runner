# adsb-runner

Base config for running a Raspberry Pi as an ADS-B receiver. Includes a docker-compose file
for running in with both 1090 and 978 MHz receivers. You **will** need to change some defaults
in the docker-compose file to match your setup.

To configure, you will want to make a copy of the `example.env` file and edit it to match your
setup. The `example.env` file contains comments explaining what each variable does.

If you disable feeding to certain services, you will want to remove the corresponding
service configuration from the `docker-compose.yml` file.

## Usage

```bash
# Clone the repo
git clone https://github.com/R167/adsb-runner.git asdb
cd adsb

# Copy the example env file and edit it
cp example.env .env
vim .env

# Start the docker containers
make start
```
