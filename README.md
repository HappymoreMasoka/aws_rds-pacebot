# 🎓 PaceBot: AI Assistant for Pace University Graduate Programs

**PaceBot** is a smart chatbot that helps users find and apply to graduate programs at Pace University. It combines **semantic search**, **retrieval-augmented generation (RAG)**, and **AWS integration** to deliver an intelligent and interactive experience.

---

## 🚀 Features

- 🔍 **Semantic Search with ChromaDB**  
  Finds the most relevant programs using sentence embeddings from `all-MiniLM-L6-v2`.

- 🧠 **AI Answers with Google Flan-T5**  
  Uses a fine-tuned T5 model (`google/flan-t5-small`) for natural language responses.

- 💾 **Application Submission to AWS RDS**  
  Application data is securely saved to a **MySQL database hosted on Amazon RDS**.

- 🧠 Built with: `sentence-transformers`, `transformers`, `chromadb`, `PyMySQL`, and more.

---

## 🛠 Technologies Used

| Tech / Service       | Role                                                |
|----------------------|-----------------------------------------------------|
| Python               | Main programming language                           |
| ChromaDB             | Vector store for semantic search                    |
| HuggingFace Transformers | Language model pipeline (`text2text-generation`)   |
| AWS RDS (MySQL)      | Backend database for saving applications           |
| Google Colab         | Development & demo environment                      |
| Visual Studio Code   | Local testing & DB setup                            |

---

## 📂 How it Works

1. 🧾 Loads program data from CSV (program name + link)  
2. 📌 Embeds program names using `sentence-transformers`  
3. 📦 Stores them in a local ChromaDB collection  
4. 🤖 Responds to user queries using relevant programs + LLM (Flan-T5)  
5. 📝 On `apply`, collects application info and saves it to AWS RDS  

---

## 💻 Demo

<img src="demo.gif" width="500"/>

---

## 🔐 AWS Integration (Security)

- ✅ **MySQL credentials stored securely** in `.env` or environment variables  
- ✅ RDS access restricted via **security groups**  
- ✅ Proper handling of **connection errors and exceptions**

---

```bash
# Step 1: Install dependencies
pip install pandas chromadb sentence-transformers transformers pymysql

# Step 2: Run the bot
python pacebot.py
