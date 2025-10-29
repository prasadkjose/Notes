## Domains
1. Text related AI Tasks 
	1. Sequential
	2. Multiple Words(tokens)
	3. Sentence Length - padding
	4. Similarity - Embedding or dot/cosine similarity
	5. Generative AI Models
		1. RNN - recurrent NN
		2. Long Short Term memory
		3. Transformers
2. Audio related AI Tasks:
	1. Sample Rate - snapshot in time
	2. Reconstructed  sampling rate
	3. Bit Depth
	4. Gen AI Model
		1. RNNs
		2. Long Short Term
		3. Transformers
		4. Variational Auto-encoders
		5. Waveform Model
		6. Siamese Networks
3. Vision Related AI Tasks
	1. Gen AI Models:
		1. CNNs - pattern in images - hierarchical representations
		2. YOLO - object detection in images
		3. Generative Adversarial Networks (GAN) - image generation
4. Anomaly detection
5. Recommendation
6. Forecasting.

## AI vs ML vs DL
1. AI imitates human intelligence. 
2. ML - Algorithms to learn from past data and predict on new data
	1. Identify trends 
	2. Types -
		1. Supervised - Learning from labelled data
		2. Unsupervised -  
			1. No label & extracts trends from data
			2. Grouping into clusters
			3. Relationships in datasets
		3. Reinforcement learning 
			1. Rewards and feedback
			2. Learn form outcomes
3. DP - Algorithms learn from complex data using NNs and predict on new data
	1. Extract features and rules from data through layers of neurons. 
	2. GEN AI 

## Machine Learning
1. Sunset of AI that can learn from data and make predictions. 
2. Input Features and output data
3. Leaning or training from existing data. 
4. If learning data 
	1. is continuous then we have regression 
	2. is categorical then we have classification
5. Linear Regression: 
	1. Slope of the line is how we predict the outcome. 
	2. Squared error is the squared difference between the predicted data point and the actual data point. This need to be minimized for max accuracy.
6. Classification: 
	1. Goal is to find the category of the output
	2. Logistic regression - Predict true or false outcome using a sigmoid function that squashed probabilities 0 to 1. Like Iris dataset. 
7. Anaconda - Manage data science datasets and environments like jupyter notebooks. 
8. Unsupervised data workflow. 
	1. Prepare and normalize the data
	2. Create similarity metrics
	3. Run clustering algorithm 
	4. Interpret result and adjust clustering
9. Reinforcement Learning. 
	1. Setup environment
	2. State representation
	3. Action space - all possible actions
	4. Rewards and penalties


## Deep Learning
1. Subset of ML to train ANN with multiple layers. 
2. Features are extracted from raw and complex data
3. Representation of this data is built using these features
4. Parallel processing of data is possible 
5. Algorithms :

| Image/video | Sequential, timeseries and NLP | Image, video, audio generation |
| ----------- | ------------------------------ | ------------------------------ |
| CNNs        | Transformers                   | Transformers                   |
|             | LSTM                           | Diffusion Models               |
|             | Recurrent NNs (RNNs)           | GANs                           |
### Sequence Models: 
1. Input data is in the form of sequences 
2. Goal is to make predictions and find patterns
3. NLP, Speech recognition, Time series analysis, gesture recognition, music gen
4. RNNs are popular - 
	1. Handles Sequential Data
	2. Hidden state or memory
	3. Has a feedback loop
	4. Problem: Long term vanishing radiance - memory for long term context memory- Doesn't see words that are far away in a sentence
5. LSTM
	1. Input processing -> Previous memory -> Gating mechanism -> Updating memory -> Output generation
	2. Gating mechanism 
		1. Forget gate
		2. Input gate
		3. output gate
6. CNNs
	1. Process and analyze grid like data like pixels of an image. 
	2. Layers: 
		1. Input
		2. Feature extraction layers - a 
			1. Convolution layer - applies operations to the input image using filters known as kernels
			2. ReLu activation function - Network to learn more complex and non-linear relationship int he data - like curves in a number
			3. Pooling layer - reduce the complexity and dimensions by focusing on the more appropriate ones. 
		3. Output layer
	3. Limitations: 
		1. Massive data and computation
		2. Over-fitting - limited training data
		3. Interpretability - black box
		4. Sensitivity 
## Generative AI
1. Subset of DL
2. Learn underlying patterns and create new data that share common patterns. 
3. Learns patterns in unstructured(unlabeled) data. 
4. Types: 
	1. Text
	2. Mutimodal - multiple modalities - text, video audio. 
5. Transformers - 
	1. LLMs are based on Transformers
	2. Parameters are adjustable weights in the NN
	3. In a sentence, transformers can see all the words at the same time.
	4. Transformers have encoders and decoders modules - To and from a vector representation(Embeddings) of the data. 
	5. Uses tokens as the smallest level of unit. 
	6. Embeddings are useful as there is a vector database to query based on the user input test - Retrieval Augmented Generation(RAG)
		1. RAG doesn't need fine tuning
	7. Decoders can take a sequence of tokens and outputs a token one at a time. It has a many to one. It can also have a loop back to the decoder to get more tokens and form a sentence. 
6. Prompt Engineering
	1. Reinforcement Learning from Human Feedback(RLHF) - Give prompts to the LLM and monitor it's outputs and tweak it. 
	2. Types and methodologies: 
		1. In-context Learning - conditioning a LLM with instructions. 
		2. k-shot prompting - giving it examples of the intended task.
		3. Chain of thought Prompting -  give ti reasoning steps and describing the calculation logic with examples.
	3. Hallucination: False or incorrect data provided by the LLM - subtle - no errors in the language 
7. Customize LLM: 
	1. Prompt engineering, RAG and Fine-tuning
	2. Take a pretrained model and provide custom data for specific tasks. 
	3. Model efficiency is better by using fewer tokens .

## OCI AI Portfolio
1. AI Services: 
	1. Application layer of services
	2. Language: pretrained models, sentiment analysis - custom models - translation
	3. Vision: 
	4. Speech
	5. Document Understanding: OCR - text extraction - key value extraction - table extraction -document classification
	6. Digital Assistants
2. ML services: 
	1. Data layer of services
	2. Data Science OCI
		1. Full ML life-cycle
		2. Principles: 
			1. Accelerated - automation, libraries
			2. Collaborative
			3. Enterprise grade - fully managed - enterprise grade
			4.  Model Deployments in OCI Data Science enable you to deploy your machine learning models as HTTP endpoints
			5. Jobs - define and run repeatable machine learning tasks and workflows.
	3. ML in database
	4. Data labeling
3. RDMA Super Cluster - Remote Direct Memory access
	1. Bypass CPU for GPU to GPU direct communication
	2. Low latency
	3. Buffers to make long distance communication low latency
4. 
