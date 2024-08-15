package gossip

import "sync"

type Node struct {
	sync.RWMutex
	ID       string
	Address  string
	Port     int
	metadata map[string]string
}

func NewNode(id, address string, port int) *Node {
	return &Node{
		ID:       id,
		Address:  address,
		Port:     port,
		metadata: make(map[string]string),
	}
}

func (n *Node) GetMetadata(key string) (string, bool) {
	n.RLock()
	defer n.RUnlock()
	value, exists := n.metadata[key]
	return value, exists
}

func (n *Node) SetMetadata(key, value string) {
	n.Lock()
	defer n.Unlock()
	n.metadata[key] = value
}
