# Introduction
1. Probabilistic model of a text. 
2. LLM refers to the number of parameters. So it;s also called a Language Model.
3. We need to move from these probabilistic distributions to generating text.
## Architecture
1. Encoders and decoders or embedding and text generation
	1. Embedding is a numeric representation that tries to capture the meaning of the text. 
	2. Encoding is TEXT -> Embeddings or Vector Representation
	3. Decoding is Embeddings -> TEXT
	4. They are primary components in a Transformer. 
	5. ![[Pasted image 20251105210556.png]]
	6. Number of parameters increases exponentially. 
	7. Vectors are also used in DBs for semantic or vector searching or querying
	8. Encoder-decoder models are primarily used for translations with self-referential loops(similar to a decoder model). 
	9. ![[Pasted image 20251105211503.png]]
	10. LLMs are most referring to Decoder models
## Prompting 
1. How can we update the probabilities? Prompting and Training.
2. Changing the input prompt will change the distributions will change. 
3. During Pre-training the a large amount of text is sent and it learns the occurrences of words and it's neighbors and it's features. 
4. Prompt Engineering: Iteratively refining the prompt to elicit a particular response by continuously trying to get different distributions. 
	1. It's hard to predict which is the 100% correct prompt. 
	2. Lot of time to spend and it's model specific. 
	3. Types: 
		1. In context Learning - Conditioning a LLM with **instructions** and **demonstrations**
		2. K-shot - k **examples**. 0 examples is zero shot, Few shot is better
		3. Chain of thought Prompting - Prompt LLM to show intermediate steps of thought. - Helps with harder, complex tasks - breaks down the problem in smaller chunks - imitates reasoning
		4. Least to Most prompting - Use simple problems first and use those logic to solve harder problems. 
		5. Step-Back prompting. Identify the science or math concept of principles first before getting in to the actual prompt. 
5. Issues: 
	1. Prompt Injection or Jailbreaking: Provide the LLM with input that makes it ignore instructions or rules set during deployment
	2. 

## Training

## Decoding
