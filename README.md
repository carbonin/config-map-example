This example project shows how a config map may be used to inject an entire file into an existing directory while preserving the files in that directory from the base image.

To run the example:
`oc apply -f objects.yml`

This will log the following:

```
# Number of generated items
amounts:
  container_images: 50000
  container_groups: 1000000
  container_nodes: 500000
  container_projects: 10000
  container_templates: 50000
  flavors: 50000
  service_instances: 100000
  service_offerings: 100000
  service_offering_icons: 5000
  service_plans: 500000
  source_regions: 50000
  volumes: 100000              # belongs_to [:volume_type, :source_region]
  volume_types: 50000
  vms: 100000                  # belongs_to [:flavor]
---
:even:
- more
- stuff
---
- things
- stuff
---
:more: things
```
