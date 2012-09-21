class collector_bug::working (
  $external_host,
) {
  Collector_bug::Resource <<| |>>

  collector_bug::working::defined { "test":
    external_host => $external_host,
  }
}
