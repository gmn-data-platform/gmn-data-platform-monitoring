# GMN Data Platform Monitoring
Global Meteor Network monitoring services for the [GMN Data Platform](https://github.com/gmn-data-platform/gmn-data-platform).

This project provides log and system metric aggregation/visualisation using the [ELK Stack](https://www.elastic.co/what-is/elk-stack) for internal GMN Data Platform services.
The [docker-compose.yml](https://github.com/gmn-data-platform/gmn-data-platform-monitoring/blob/436ff2fbcecb9ed24d4f4795e0f20114d8a98977/docker-compose.yml) file defines:
- A [Confluent Control Center](https://docs.confluent.io/platform/current/control-center/index.html) (`control-center`) service that monitors the [GMN Data Store Ingestion](https://github.com/gmn-data-platform/gmn-data-store-ingestion) Kafka topics. The web interface can be access locally at `http://localhost:9021`. Messages in the Kafka broker can be viewed here for debugging purposes. This service also provides lots of Kafka specif maintenance features.
- An [Elasticsearch](https://www.elastic.co/) cluster (`elasticsearch`) that stores logs, system metrics and Kafka messages in a central document based database. Elasticsearch is exposed locally at `http://localhost:9200`.
- A [Metricbeat](https://www.elastic.co/beats/metricbeat) service that gathers Docker logs and system metrics such as CPU usage and pushes them to Elasticsearch.
- A [Kibana](https://www.elastic.co/kibana/) service that visualises the data in the Elasticsearch cluster and provides an internal dashboard for monitoring internal GMN Data Platform services (mainly for the GMN Data Store Ingestion services). The web interface cam be accessed local at `http://localhost:5601`.

These services can be started up using the [Makefile](https://github.com/gmn-data-platform/gmn-data-platform-monitoring/blob/436ff2fbcecb9ed24d4f4795e0f20114d8a98977/Makefile).

More info: https://github.com/gmn-data-platform/gmn-data-platform

## Requirements
| Prerequisite                                                      | Description                                             |
|-------------------------------------------------------------------|---------------------------------------------------------|
| [Docker](https://www.docker.com/)                                 | Container management tool                               |
| [Docker Compose v2](https://docs.docker.com/compose/cli-command/) | A tool for defining multi-container apps                |
| [GNU Make 4.1+](https://www.gnu.org/software/make/)               | A tool which allows an easy way to run project commands |

## Usage
```sh
make run_all_services
```

See the Makefile for more provided tasks.

## Contributing

Contributions are very welcome.
To learn more, see the [Contributor Guide](https://github.com/gmn-data-platform/gmn-data-platform-monitoring/blob/main/CONTRIBUTING.rst).

## License

Distributed under the terms of the [MIT license](https://opensource.org/licenses/MIT), , GMN Data Platform Monitoring is free and open source software.

## Issues

If you encounter any problems, please [file an issue](https://github.com/gmn-data-platform/gmn-data-platform-monitoring/issues) along with a detailed description.
