#!/usr/bin/env python2
import collections

Config = collections.namedtuple("Config", ("nfa_program", "input"))

def tokenize(config):
    ## your code goes here
    #split config into instructions and input
    
    #make a match data structure
    
    #use modified thompsons VM to see all the matches
    
    ##return the match with longest prefix
    
    return config

# Class Queue to represent a queue 

def file_path_to_inst_array(nfa_file):
    if(nfa_file == ''):
        return 1
    #nfa_file = open(nfa_instruction_filepath, "r")
    p = ""
    for each in nfa_file:
        p = p + each 
    return p.split("\n")

def putinqueue(qset, inst_index):
    if(inst_index not in qset):
        qset.add(inst_index)

def method(instruction_array, input_text, char_index, pc_tc_match):
    match = False
    max_index = char_index
    max_match_pc = 0

    clistset = set()
    nlistset = set()

    clistset.add(0)
    while(len(clistset) != 0 and char_index <= len(input_text)):
        while(len(clistset) != 0):

            pc = clistset.pop()
            instruction = instruction_array[int(pc)].split(" ")
            inst_opcode = instruction[1]
            
            if(inst_opcode == "CHAR"):#range 
                if(char_index == len(input_text)):
                    continue
                for i in range(int(instruction[2]) , int(instruction[3])+1 ):
                    if(i == ord(input_text[char_index]) ):
                        putinqueue(nlistset, pc+1)
                        break

            elif(inst_opcode == "JMP"):
                putinqueue(clistset, instruction[2])

            elif(inst_opcode == "MATCH"):
                if(char_index > max_index):
                    max_index = char_index
                    max_match_pc = pc
                    match = True
                else:
                    if(pc < max_match_pc):
                        max_index = char_index
                        max_match_pc = pc
                        match = True
                        
            else:
                putinqueue(clistset, int(instruction[2]))
                putinqueue(clistset, int(instruction[3]))

        clistset = nlistset 
        nlistset = set() 
        char_index +=1

    if(match == False):
        return 0 
    else:
        #print("Match at PC", max_match_pc, "for tc until(exclusive)", max_index)
        pc_tc_match.append([max_match_pc, max_index])
        return max_index
    
def showformattedoutput(input_text, PC_TC_MATCH):
    indx = 0
    for each in PC_TC_MATCH:
        if(input_text[indx:each[1]] == '\n'):
            print('{}:"{}"'.format(each[0], '\\n') )
        else:   
            print('{}:"{}"'.format(each[0], input_text[indx:each[1]]) )
        indx = each[1]

def tokenize(config):
    input_text = config.input
    nfa_instruction_file = config.nfa_program
    instruction_array = file_path_to_inst_array(nfa_instruction_file)
    
    if(len(input_text) == 0 or instruction_array == 1):
        return 1 

    main_matches = []
    PC_INDEX_MATCH = []

    char_index = 0
    
    
    while(char_index < len(input_text)):
        
        returned = method(instruction_array, input_text, char_index, PC_INDEX_MATCH)#2
        if(returned == 0):
            return 1
        char_index = returned#2
    showformattedoutput(input_text, PC_INDEX_MATCH)
    return 0
   
#print(thompsonvm("a ba a abaaa a bbb aaaa a", "inputnfa.txt"))

         