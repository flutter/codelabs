## Test data

The files under `codelabs` are created with the [`claat`][] tool like this:

```console
$ claat export -f md 1CdlksSvxBE2XRBVZtOKpfMUO68OLJDLdQc7mxN_zABg
ok      codelabs/flutter-cupertino
```

Note, the exported image files are not checked in.

The files under `exports` are created as follows:

```console
$ cd exports
$ dart run ../../../bin/claat_export.dart -s ../../../client_secret.apps.googleusercontent.com.json -d 1MfCrv1w6aK7SLq9gmjJwXCJFQ-AX9NWJit2gq-v2Xx8
```

  [`claat`]: https://github.com/googlecodelabs/tools/tree/main/claat