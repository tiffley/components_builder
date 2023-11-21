import stanfordnlp

def process_japanese_text(text):
    # Initialize the StanfordNLP pipeline for Japanese
    nlp = stanfordnlp.Pipeline(lang='ja', processors='tokenize,lemma,pos,ner,parse')

    # Process the Japanese text
    doc = nlp(text)

    # Display tokenized words with their POS tags
    for sentence in doc.sentences:
        print(f"Tokens: {[word.text for word in sentence.words]}")
        print(f"POS Tags: {[word.upos for word in sentence.words]}")
        print("--------------------")

# Japanese text to be processed
japanese_text = "あなたのお名前は何ですか？"

# Process the Japanese text
process_japanese_text(japanese_text)
