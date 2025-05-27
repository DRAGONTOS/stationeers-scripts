define stacker 1585641623

main:
    yield

    # Test 1: Check if the door is open using the simplest `lbs` command
    lbs r10 door 0 Open 0    # Check if the door is open using Average mode
    beq r10 0 door_closed    # Branch if door is not open

    # Test output to verify the door is open
    sb door Open 1           # Force door to open if not already

door_closed:
    # Set the door to closed (for testing purposes)
    sb door Open 0
    j main                   # Loop back to main
