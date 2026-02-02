

def is_pangram(sentence: str) -> bool:
    counter: set[str] = {
        letter for letter in sentence.upper()
        if "A" <= letter <= "Z"
    }
            
    return len(counter) == 26