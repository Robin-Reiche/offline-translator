# Consumer ProGuard rules. These are packaged into the AAR and applied
# automatically by any project that depends on this library.

# The native library (libbergamot-sys.so) uses JNI to create instances of
# these classes (e.g. DetectionResult) via JNIEnv::NewObjectV, looking them
# up by name at runtime. Without this rule, R8/ProGuard strips or renames
# them in minified consumer builds, the JNI lookup returns null, and the app
# aborts with SIGABRT. See cgeo/cgeo#18112.
-keep class dev.davidv.bergamot.** { *; }
