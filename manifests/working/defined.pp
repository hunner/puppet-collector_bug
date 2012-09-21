define collector_bug::working::defined (
  $external_host,
) {
  if defined(Collector_bug::Resource[$external_host]) {
    notify { "working":
      message => "This will be called because defined resources are run after collectors, thus the defined() function is also run after the collector.",
    }
  }
}
