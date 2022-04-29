# Output-port-lookup
- To understand the project, please first visit our PDF HLS_report file.
- The code structure is as follow:

   Functions in **Output_port_lookup.cpp** :
  
      switch_output_port_lookup // represents the output lookup module
      |     
      ---> Read
      |
      ---> Write
      
      Read // To perform the read operation
      |
      ---> queue // defined in queue.cpp
      |
      ---> Send_packet // defined in Send_packet.cpp
      
      Write // To perform the write operation
      |
      ---> queue // defined in queue.cpp
      |
      ---> Combine // defined in Combine.cpp
      |
      ---> ap_axis // defined in packet.cpp
      
  Function in **Combine.cpp**:
  
      Combine // combines ethernet parsing and lookup processs
      |
      ---> eth // defined in Eth.cpp
      |
      ---> lut // defined in lut.cpp
      
  Function in **Eth.cpp**:
  
      eth // parses ethernet frame for source and destination MAC address
      
  Function in **lut.cpp**:
  
      lut // performs lookup operation in lookup table
      |
      --> Lut // lookup table, also defined in lut.cpp
  
  Function in **Send_packet.cpp**:
  
      Send_packet // Sends packet to the slave module
  
  Queue class's methods definitions in **queue.cpp**:
  
      Enqueue // puts element into queue
      
      Dequeue // takes element out of queue
      
      isEmpty // check if queue is empty
      
      isNearlyFull // check if queue is nearly full
      
      Front // returns the first element in queue
      
      Reset // clears queue
 
  
