
all: collectfwdata compare_fw_listeners nmapscanner

collectfwdata: collectfwdata.go structs.go lib.go
	go build collectfwdata.go structs.go lib.go

compare_fw_listeners: compare_fw_listeners.go structs.go lib.go
	go build compare_fw_listeners.go structs.go lib.go

nmapscanner: nmapscanner.go structs.go lib.go
	go build nmapscanner.go structs.go lib.go

run:
	./collectfwdata
	./compare_fw_listeners

clean:
	rm -f collectfwdata FWrulesByPort.json InterfacesByName.json ListenersByPort.json ListenersByRow.json nmapscanner
