#!/usr/bin/env bash
# Central location for Build System configuration

declare -A SecureApt=(
  [debian_10.gpg]="https://ftp-master.debian.org/keys/archive-key-10.asc" \
    [nodesource.gpg]="https://deb.nodesource.com/gpgkey/nodesource.gpg.key"  \
    [lesbonscomptes.gpg]="https://www.lesbonscomptes.com/pages/jf-at-dockes.org.pgp" \
    #TODO Not needed for arm64 and x86
    [raspbian.gpg]="https://archive.raspbian.org/raspbian.public.key" \
    [raspberrypi.gpg]="http://archive.raspberrypi.org/debian/raspberrypi.gpg.key" \
  )

## Path to the volumio repo
VOLBINSREPO="https://repo.volumio.org/Volumio2/Buster/Custom%20Packages"

## Array of volumio binaries
declare -A VOLBINS=(
[init-updater]="volumio-init-updater-v2"
)

## Backend and Fronend Repository details
VOL_BE_REPO="https://github.com/ashthespy/Volumio2.git"
VOL_BE_REPO_BRANCH="buster_upstream"

export SecureApt VOLBINSREPO VOLBINS VOL_BE_REPO VOL_BE_REPO_BRANCH
