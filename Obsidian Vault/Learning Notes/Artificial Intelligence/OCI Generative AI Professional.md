# Introduction
1. Probabilistic model of a text. 
2. LLM refers to the number of parameters. So it;s also called a Language Model.
3. We need to move from these probabilistic distributions to generating text.
## Architecture
1. Encoders and decoders or embedding and text generation
	1. Embedding is a numeric representation that tries to capture the meaning of the text. 
	2. Encoding is TEXT -> Embeddings or Vector Representation
	3. Decoding is Embeddings -> TEXT in a self referential loop
	4. They are primary components in a Transformer. 
	5. ![[Pasted image 20251105210556.png]]
	6. Number of parameters increases exponentially. 
	7. Vectors are also used in DBs for semantic or vector searching or querying
	8. Encoder-decoder models are primarily used for translations with self-referential loops(similar to a decoder model). 
	9. ![[Pasted image 20251105211503.png]]
	10. LLMs are most referring to Decoder models

# LLM Customization
## Prompting 
1. How can we update the probabilities? Prompting and Training.
2. Changing the input prompt will change the distributions will change. 
3. During Pre-training the a large amount of text is sent and it learns the occurrences of words and it's neighbors and it's features. 
4. Prompt Engineering: Iteratively refining the prompt to elicit a particular response by continuously trying to get different distributions. 
	1. It's hard to predict which is the 100% correct prompt. 
	2. Lot of time to spend and it's model specific. 
	3. Prompt formats: some model will want to have different prompts in different Tags. Like INST or SYS. Uses files like JSONL.
	4. Types: 
		1. **In context Learning** - Conditioning a LLM with **instructions** and **demonstrations**
		2. **K-shot** - k **examples**. Zero examples is zero shot, Few shot is better
		3. **Chain of thought Prompting** - Prompt LLM to show intermediate steps of thought. - Helps with harder, complex tasks - breaks down the problem in smaller chunks - imitates reasoning
		4. **Least to Most prompting** - Use simple problems first and use those logic to solve harder problems. 
		5. **Step-Back prompting**. Identify the science or math concept of principles first before getting in to the actual prompt. 
5. Issues: 
	1. **Prompt Injection or Jailbreaking**: Provide the LLM with input that makes it ignore instructions or rules set during deployment
	2. **Memorization**: After answering. Leak or reveal the original prompt by the deploying entity

## Training

1. We can use this mainly for domain adaptation - outside of the pre-trained domain or subject. - better performance and deficiency
2. Types: 
	1. **Fine Tuning FT**: Take pretrained and modify **all** it's parameters
	2. **Param Efficient FT** or T-few FT: Modify few parameters
		1. Better for cost performance
		2. Parameter Sharing - Can make multiple custom model with one base model with it's own endpoints.
	3. **Soft prompting**: Add specific parameters or words to the prompt that is pre fine tuned into the model. 
	4. **Continual Pre-training**: For **unlabeled** data and modify all parameters to the target domain. 
3. Best way to create **custom** model. 
4. **Cluster Types in OCI:** 
	1. Fine-tuning: Used for training a pre-trained model to create a custom Model
	2. Hosting: Used to host a custom model for *inference*
5. **Configurations available in OCI:** 
	1. T-few and LoRA - types
	2. Parameters: 
		1. Total training epochs
		2. Batch Size - number of samples generated before update
		3. Learning Rate
		4. Early stopping threshold
		5. Early stopping patience
		6. Log metrics
	3. Result Metrics: 
		1. Accuracy - how right the model is compared to the ground truth
			1. Even of the context is right, it **compares token.** So not the best way to determine model performance
			2. Minor mistakes are not tolerated
		2. Loss - how wrong the output of the model is. 
			1. Calculated through **probability difference** between the prediction and the actual output.
	4. 

## RAG (Retrieval Augmented Generation)
1. Model as access to (retrieved) support documents for a query. 
2. The support document will be proved to the model as an input too along with the query. 
3. Best way so far to reduce hallucinations and mitigate LLM training bias
4. Used for fact checking, entity- linking. 
5. **Non parametric** as we don't have to update the model. Not hard-coded for any one domain. 
6. Need compatible data source. 

## How to choose the best method for LLM Customization? 
1. Start with Prompting - Simple
2. Add few shot prompting
3. Use Simple RAG
4. Fine tune model
5. Optimize mode based on retrieval 
# Decoding
1. Process of text generation from the vector representation.
2. 1 word at at time.
3. Types: 
	1. **Greedy Decoding**: At each step the distribution is used on all words in the vocabulary and feed it back to the model to update the probabilities of the other words. The highest probability word is chosen.
	2. **Non Deterministic Decoding**: Pick words randomly at each step.
		1. Temperature: A parameter that modulates the distribution.  
			1. When **low** the probability of the each probable word are more further or peaked
			2. When **high**, all the probabilities become similar or flatten
			3. The order of the probabilities stays the same. Highest word or lowest stays the same. 
			4. In real life, 
				1. Lowering the temp, causes less deviation from facts or commonly used words from the trained model, like when stating a scientific fact, creativity is not important. 
				2. Increasing the temp causes more rare words to be included, like when writing a story. 
4. **Hallucination**: 
	1. Generated text is not factual or ungrounded.
	2. Text might be fluent and no grammatical errors. 
	3. It's subtle and no knows method to identify hallucinations. 
	4. RAG hallucinate less then 0 shot ones. 
	5. Grounded and attributedness- The process of linking a model's output to a specific, verifiable source of information, such as a user's data or a particular database
# LLM Applications
1. Code Models: 
	1. Trained on code and comments. 
	2. Copilot, code Llama
	3. Easier than Natural Language. 
2. Multi-modal
	1. Text, Language, Image etc
	2. Diffusion Models: 
		1. Produce complex output simultaneously rather token by token. like in decoders.
3. Language Models
	1. Create plans and reasons. 
	2. Take actions as response to plans. 
	3. can use tools. 
		1. ReAct: a framework for LLM to emit thought, acts and observe the results. 
		2. ToolFormers: Pre training method where strings are replaces with calls to tools
# OCI Gen AI service
1. One API Gen AI Service - Any model with one API
2. Regional - Chicago, Frankfurt and London
3. 4. API Service: 
	1. Use JuPyter notebooks to access it outside OCI console
	2. Config File: 
4. Pre-trained Foundational Models
	1. **Chat** - ***r-plus(128k) or r-16k or Llama instruct***. 
		1. Fundamental unit is a **token** - Multiple tokens per word
		2. Parameters to be changed - 
			1. output tokens, 
			2. Preamble prompt, 
			3. temperature, 
			4. Top-k - pick top k highest probability token, 
			5. Top-p - pick only token whose probability adds to p. Ignore the rest
			6. Frequency and presence Penalty - Penalize based on frequency or presence. 
	2. **Embedding Models** - ***Cohere.embed***-  English and multilingual( cross lingual )
		1. Vector representations can be for words, sentences and also whole documents. 
		2. **Semantic Similarity** - Cosine and Dot product similarity are used to compare vector representation. 
		3. Major use-cases are translations and semantic or vector searching
		4. 1024 dimensional vector - 512 max token 
5. Sizing: 
	1. Cohere R+ and Embedding models can't be fine tuned and only is hosted
	2. Fine tuning and hosting will take it's own cluster units that has to be configured per request. 
	3. Hosting is minimum per month - 744 hours
	4. Fine tuning is minimum per hour
	5. **RDMA - Remote direct Memory Access** and dedicated GPUs are assigned in OCI
	6. Custom Models are tenancy based. 
	7. Key management and GEN AI Object storage service( for weights) are provided. 

## RAG and vector searching OCI
1. Pipeline - 
	1. Ingestion: 
		1. **Loading Docs -> Chunking -> Embedding -> indexing**
		2. Max size of chunks is limited by max window size
		3. Chunks should preserve contexts using overlapping or shared parts
		4. Oracle 23ai supports embedding within it. 
		5. Use Vector store to store and query
		6. 
2. 