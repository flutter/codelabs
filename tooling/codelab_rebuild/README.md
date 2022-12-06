# Codelab Rebuild tooling

This tool enables the automated rebuilding of the codelabs in this
repository via a `yaml` configuration file.

## Installing the `codelab_rebuild` tool

To make it easy to use this tool, you can install the tool in your
global pub executable cache by running the following command from this
project directory.

```console
$ dart pub global activate --source path .
```

## Usage

Running the tool requires a `codelab_rebuild.yaml` file. There are examples
of these configuration files in the codelabs in this repository. To run the
tool on the `adaptive_app` codelab, run the following commands:

```console
$ cd ../..    # go back to the root of the flutter/codelabs checkout
$ codelab_rebuild adaptive_app/codelab_rebuild.yaml
```

## Building a `codelab_rebuild.yaml` configuration

At the top level, the `codelab_rebuild.yaml` configuration file contains
two keys, `name` for the name of the script, and `steps` which is the collection
of steps required to rebuild the codelab.

Individual steps can have a variety of attributes, which control what the step 
does. All steps must have a `name` which is output during the run. This is 
primarily for debugging a script when things break.

Steps may have a `steps` for a list of sub steps, in which case it can't have 
any other attributes. Steps within steps can go as deep as required.

For removing a file there is `rm`, removing a directory `rmdir`, creating a 
directory there is `mkdir`, each of which takes as the value the path to the
file or directory to create or remove.

For modifying the content of files there are two approaches. For replacing the 
contents of a file, there is `replace-contents` key which takes the new contents of 
the file as the value. Note, if the file doesn't exist, `replace-contents` will \
create the file. To specify the file to be modified you must also set the 
`path` key with the relative path to the file.

Alternatively there is the `patch` family of keys, which are fed to the `patch` 
command to update the file nominated by the `path` key. After much trial and 
error I have stabilised on using `patch-u` (unified diffs), generated with the
help of the `git diff` command.

For running `flutter` and `dart` commands there are appropriate keys. Use the
`path` key to nominate the working directory in which to run the `flutter` or
`dart` command.

There is a `platforms` key to restrict which platforms a step will be run on. 
This is useful for specifying that specific `flutter` commands are only run
on platforms that support that form of executable. No point trying to build 
an iOS Flutter app on MS Windows.