# testing-bugsnag
Test repository for Bugsnag

This project should, if it could be built run a test React-Native app with a bugsnag test button triggered from RN and also a native (swift) today extension with a similar button performing a Bugsnag notification.

## Setup
Insert dependencies
```
yarn
```

## Configuration
Insert your own Bugsnag api key in the following files, replace string, "add-bugsnag-key-here"

* SharedLogic.swift
* index.tsx

## Run
Start tsc watcher and packer

```
yarn watch
yarn start
```
, then run project from Xcode

## Issues
If you get a warning about missing tvOS-reference from the linker it could be because I removed the target. Seems to be resolved by going into Recovered References in Xcode and just delete the one targeting tvOS.
