class collector_bug::broken(
  $external_host,
) {
  Collector_bug::Resource <<| |>>

  if defined(Collector_bug::Resource[$external_host]) {
    notify { "broken":
      message => "This will never be called because defined() is run before the collector",
    }
  }
}
