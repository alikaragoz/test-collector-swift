import BuildkiteCore

/// This function is automatically called by the Loader module to ensure the test collector is loaded before running any tests
@_cdecl("loadCollector")
@usableFromInline
func loadCollector() {
    BuildkiteCore.TestCollector.load()
}
