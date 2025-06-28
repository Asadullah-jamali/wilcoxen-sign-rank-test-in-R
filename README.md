# wilcoxen-sign-rank-test-in-R
Absolutely! Based on your R code, here is a complete `README.md` file you can upload directly to GitHub:

---

````markdown
# 📊 Normality and Non-Parametric Testing in R using the `cars` Dataset

This repository contains an R script that demonstrates basic statistical testing and visualization for checking the normality of a derived variable using R's built-in `cars` dataset.

> ⚠️ **Disclaimer**: The `cars` dataset used in this example is built into R and does not represent real-world vehicle performance data. It is intended for educational and demonstration purposes only.

---

## 🎯 Objective

- Generate a derived variable: `speed - dist`
- Test the variable for normality using the Shapiro-Wilk test
- Visualize the distribution
- Apply a non-parametric Wilcoxon Signed-Rank Test if normality is not met
- Save the dataset locally as a CSV file

---

## 🧪 What the Script Does

### 1. Load and Preview the Data
```r
attach(cars)
head(cars)
````

Loads the built-in `cars` dataset and previews the first few rows.

### 2. Create a Non-Normal Variable

```r
d <- speed - dist
```

Creates a difference variable `d` that is expected to be non-normally distributed.

### 3. Check for Normality

```r
shapiro.test(d)
```

Performs the Shapiro-Wilk normality test on `d`. If the p-value is less than 0.05, the data is likely not normally distributed.

### 4. Visualize the Distribution

```r
par(mfrow = c(1, 2))
hist(scale(d), prob = TRUE)
curve(dnorm(x), add = TRUE, col = "red")
```

* Histogram of the standardized variable `d`
* Normal distribution curve (in red) for comparison

### 5. Perform Wilcoxon Signed-Rank Test

```r
wilcox.test(d, mu = 0)
```

Used when the data is not normally distributed. Tests if the median of `d` is significantly different from 0.

### 6. Export the Dataset

```r
write.csv(cars, "C:/Users/M.Qasim/Documents/cars.csv")
```

Saves the dataset to a local directory in CSV format.

---

## 📁 Repository Contents

```
/project-root
  ├── cars_analysis.R         # Main R script
  └── README.md               # This documentation file
```

---

## ✅ Requirements

* R (any version supporting base functions)
* RStudio (optional, but recommended)
* No external packages required (only base R used)

---

## ⚠️ Notes

* `attach()` is used for simplicity, but it's better to avoid it in larger scripts due to potential variable conflicts. Prefer `cars$speed` or `with(cars, ...)` for safer referencing.
* This project is for learning and demonstration only.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute it with attribution.

---

## 🙌 Contributing

Contributions are welcome! If you find an issue or have suggestions for improvement, feel free to open an issue or submit a pull request.

---

## 📬 Contact

For any questions, reach out via GitHub issues or discussions.


