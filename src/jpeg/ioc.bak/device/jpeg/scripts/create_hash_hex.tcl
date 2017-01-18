# (C) 1992-2014 Altera Corporation. All rights reserved.                         
# Your use of Altera Corporation's design tools, logic functions and other       
# software and tools, and its AMPP partner logic functions, and any output       
# files any of the foregoing (including device programming or simulation         
# files), and any associated documentation or information are expressly subject  
# to the terms and conditions of the Altera Program License Subscription         
# Agreement, Altera MegaCore Function License Agreement, or other applicable     
# license agreement, including, without limitation, that your use is for the     
# sole purpose of programming logic devices manufactured by Altera and sold by   
# Altera or its authorized distributors.  Please refer to the applicable         
# agreement for further details.                                                 
    

# Update onchip_ram.mif with version and periphery hash data.  Then create Intel
# hex form of the same file.  Adjust_pll's update_mif call will see the new file
# and populate the onchip-RAM with it.

set max_onchip_ram_bytes 1024
set onchip_ram_version_id 1
set hash_bytes 20
set prog create_hash_hex

if { $argc != 1 } {
  post_message "Error: $prog requires one argument: name of file containing the periphery hash"
  exit 2
}

# Open file containing the periphery hash 
set hash_filename [lindex $argv 0]
if { ! [file exists $hash_filename] } {
  post_message "Error: $prog: Hash file doesn't exist"
  exit 2
}
set hashfile [open $hash_filename r]


# Create MIF for the onchip_mem component
set mif_file "onchip_ram.mif"
set mif [open $mif_file w]
set ram_depth [expr int ($max_onchip_ram_bytes / 4 ) ]
puts $mif "DEPTH=$ram_depth;"
puts $mif "WIDTH=32;"
puts $mif "ADDRESS_RADIX=DEC;"
puts $mif "DATA_RADIX=HEX;"
puts $mif "CONTENT BEGIN"
#puts $mif "0 : [expr int ($k_achieved * 1000)];"
set addr 0
puts $mif "$addr : $onchip_ram_version_id;"
incr addr

for {set i 0} {$i < [expr int ($hash_bytes/4)] } {incr i} {
  # 8 hex chars define the 4B word
  set hash_four_bytes [read $hashfile 8]
  puts $mif "$addr : $hash_four_bytes;"
  incr addr
}

# Zero out rest of mif
puts $mif "\[$addr\.\.[expr $ram_depth - 1 ]\] : 0 ;"

puts $mif "END;"
close $mif
close $hashfile
qexec "mif2hex $mif_file onchip_ram.hex"
