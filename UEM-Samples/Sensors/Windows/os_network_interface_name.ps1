# Description: Returns the name (description) of the active network interface
# Execution Context: SYSTEM
# Execution Architecture: EITHER64OR32BIT
# Return Type: STRING

$properties = @('Name','InterfaceDescription')
$physical_adapter = get-netadapter -physical | where status -eq "up" |select-object -Property $properties
Return $physical_adapter.InterfaceDescription

