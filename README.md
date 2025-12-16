# 🚗 Automated Car Price Prediction Model

A machine learning system that predicts vehicle prices with **96.49% R² accuracy** using Random Forest and advanced feature engineering on **400,000+ car listings**.

> Academic research project — University of Niagara Falls (MSc Data Analytics)

---

## 📌 Overview

Vehicle pricing is traditionally based on heuristic rules or expert judgment, which can be subjective and inconsistent.  
This project builds a **data-driven, automated pricing model** that estimates car prices using vehicle specifications such as engine power, dimensions, age, mileage, and fuel type.

The final model significantly outperforms traditional linear pricing approaches by capturing **non-linear relationships** in real-world automotive data.

---

## 🎯 Objectives

- Build an automated car price prediction model  
- Achieve **R² > 85%** for reliable valuation  
- Reduce human bias in pricing decisions  
- Ensure scalability and reproducibility  

**Final Result:**  
✅ **R² = 0.9649**  
✅ **Cross-Validation R² = 0.9638**

---

## 🧠 Methodology

### Data
- **Source:** arXiv automotive dataset  
- **Size:** 400,000+ vehicle listings  
- **After cleaning:** ~320,000 records retained (80%)

### Key Steps
- Strategic missing-value handling (grouped median/mode imputation)
- Exploratory data analysis and correlation studies
- Feature engineering (Car Age, log transformations)
- Categorical encoding
- Model comparison and hyperparameter tuning
- K-Fold cross-validation

---

## 🤖 Models Evaluated

| Model | R² Score |
|------|---------|
| Linear Regression | 0.8600 |
| Lasso Regression | 0.8599 |
| Decision Tree | 0.9409 |
| **Random Forest** | **0.9649** ✅ |

Random Forest provided the best balance of **accuracy, robustness, and interpretability**.

---

## 📊 Final Performance

- **R²:** 0.9649  
- **MAE:** 0.1228  
- **RMSE:** 0.1877  
- **CV R²:** 0.9638  
- **No overfitting:** Train R² (0.9942) vs Test R² (0.9649)

<img width="960" height="590" alt="image" src="https://github.com/user-attachments/assets/d901e548-9bcb-4387-a2b5-5f1ce87e2087" />


---

## 🔍 Key Insights

- **Non-linear depreciation:**  
  Cars lose 60–70% of value in the first 5 years; depreciation flattens after ~15–20 years.
  <img width="824" height="551" alt="image" src="https://github.com/user-attachments/assets/835c6929-4a4b-491c-9b3f-e8578bbc5721" />


- **Top price drivers:**  
  Engine power, vehicle dimensions, and age matter more than brand name.

- **Data preprocessing impact:**  
  Log-transforming skewed variables improved R² from **0.72 → 0.96**.

- **Ensemble advantage:**  
  Random Forest captured complex interactions missed by linear models.

---

## 🛠 Tools & Technologies

- Python  
- scikit-learn  
- pandas, NumPy  
- Random Forest, Linear Regression, Lasso, Decision Tree  
- Matplotlib, Seaborn  
- Jupyter Notebook  

---

## 👤 My Role

**Data Analyst & ML Engineer**
- Data cleaning & preprocessing
- Feature engineering
- Model training & evaluation
- Hyperparameter tuning
- Visualization & documentation

---

## 📁 Repository Structure

