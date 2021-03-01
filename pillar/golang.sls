# -*- coding: utf-8 -*-
# vim: ft=yaml
---
golang:
  version: 1.16
  lookup:
    master: golang-master
    # Just for testing purposes
    winner: lookup
    added_in_lookup: lookup_value

  pkg:
    archive:
      uri: https://storage.googleapis.com/golang

  linux:
    # 'Alternatives system' priority: zero disables (default)
    base_dir: ''
    altpriority: 9100

  cmd:
    goget:
      - github.com/hyperledger/fabric-ca/cmd/...
    clean:
      - github.com/hyperledger/fabric-ca/cmd/...

  tofs:
    # The files_switch key serves as a selector for alternative
    # directories under the formula files directory. See TOFS pattern
    # doc for more info.
    # Note: Any value not evaluated by `config.get` will be used literally.
    # This can be used to set custom paths, as many levels deep as required.
    files_switch:
      - any/path/can/be/used/here
      - id
      - osfinger
      - os
      - os_family
    # All aspects of path/file resolution are customisable using the options below.
    # This is unnecessary in most cases; there are sensible defaults.
    # path_prefix: golang_alt
    # dirs:
    #   files: files_alt
    #   default: default_alt
    # source_files:
    #   golang-config-file-file-managed:
    #     - 'example_alt.tmpl'
    #     - 'example_alt.tmpl.jinja'

    # For testing purposes
    source_files:
      golang-config-file-file-managed:
        - 'example.tmpl.jinja'

  # Just for testing purposes
  winner: pillar
  added_in_pillar: pillar_value
