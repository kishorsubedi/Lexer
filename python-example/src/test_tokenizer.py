#!/usr/bin/env python2

import tokenizer

matches_a = "0 CHAR 97 97\n1 MATCH"
def test_run1():
    assert tokenizer.tokenize(tokenizer.Config(nfa_program=matches_a, input="a")) == 0

#should only match prefixes. NFA for 'aa' should not match 'baa'.
nfa_for_aa = "0 CHAR 97 97\n1 CHAR 97 97\n2 MATCH"
def test_run2():
    assert tokenizer.tokenize(tokenizer.Config(nfa_program=nfa_for_aa, input="baa")) == 1

#empty input_string test
def test_run3():
    assert tokenizer.tokenize(tokenizer.Config(nfa_program=matches_a, input="")) == 1

#empty NFA unit tests for two methods
empty_nfa = ""
def test_run4():
    assert tokenizer.file_path_to_inst_array(empty_nfa) == 1
  
def test_run5():
    assert tokenizer.tokenize(tokenizer.Config(nfa_program=empty_nfa, input="aa")) == 1


#file_path_to_inst_array(nfa_file)