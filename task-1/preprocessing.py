import re
from nltk.corpus import wordnet

reg_patterns = [
   (r'won\'t', 'will not'),
   (r'can\'t', 'can not'),
   (r'i\'m', 'i am'),
   (r'(\w+)\'ll', '\g<1> will'),
   (r'(\w+)n\'t', '\g<1> not'),
   (r'(\w+)\'ve', '\g<1> have'),
   (r'(\w+)\'s', '\g<1> is'),
   (r'(\w+)\'re', '\g<1> are'),
]

def expand_words(text,patterns=reg_patterns):
   for (pattern, repl) in patterns:
      text = re.sub(pattern, repl, text)
   return text

def replace_rep(word):

    repeat_regexp = re.compile(r'(\w*)(\w)\2(\w*)')
    repl = r'\1\2\3'

    if wordnet.synsets(word):
        return word
    repl_word = repeat_regexp.sub(repl, word)

    if repl_word != word:
        return replace_rep(repl_word)
    else:
        return repl_word

def change_num(text):
    text = text.replace(',000,000,000 ', 'b ')
    text = text.replace(',000,000 ', 'm ')
    text = text.replace(',000 ', 'k ')
    text = re.sub(r'([0-9]+)000000000', r'\1b', text)
    text = re.sub(r'([0-9]+)000000', r'\1m', text)
    text = re.sub(r'([0-9]+)000', r'\1k', text)

    return text

def replace_spec(text):
    text = text.replace('%', ' percent')
    text = text.replace('$', ' dollar ')
    text = text.replace('₹', ' rupee ')
    text = text.replace('€', ' euro ')
    text = text.replace('@', ' at ')

    return text

def remove_math(text):
    try:
        a=text.split("[math]")
        b=a[1].split("[/math]")
        res=a[0] + b[1]
        text=" ".join(res.split())  
    except IndexError:
        return text
    return text

def remove_punc(text):
    pattern = re.compile('\W')
    text = re.sub(pattern, ' ', text).strip()

    return text

def preprocess(text):
    text=str(text).lower()
    text=expand_words(text)
    text=replace_rep(text)
    text=change_num(text)
    text=replace_spec(text)
    text=remove_math(text)
    text=remove_punc(text)

    return text
