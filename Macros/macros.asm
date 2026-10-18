; Basic macros to make readability and editing better

macro LoadAddrToAX(addr)
    LDA.W #<addr>
    LDX.W #<addr>>>16
endmacro