#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.diabasecore/diabased.pid file instead
export LC_ALL=C

diabase_pid=$(<~/.diabasecore/testnet3/diabased.pid)
sudo gdb -batch -ex "source debug.gdb" diabased ${diabase_pid}
