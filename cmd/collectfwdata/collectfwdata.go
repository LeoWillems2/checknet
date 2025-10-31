package main

/*
	collect UFW rules / Interfaces / Listeners for access
		- not for routing etc.
		- on interface does not support in or out
*/

func main() {
	GetInterfaces(true)
	//ProcessUFW(ReadUFWFile("ufw2.txt"))
	//ProcessListeners(ReadListenerFile("ss2.txt"))

	//for _, f := range []string{"nmap-internet2.txt"} {
		//ProcessNMAP(ReadNMAPFile(f), f)
	//}

	ProcessUFW(ReadUFWProc())
	ProcessListeners(ReadListenerProc())
}
