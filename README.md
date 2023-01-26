# Apply multiple linear regression to study the association between all-cause mortality and creatinine, age, smoking history, sex, and race
#### BIOST 515/518: Homework 5
#### Instructor:  Amy Willis

## Scientific Background 

“MRI dataset”, which contains data from an observational study conducted in the 1990’s to investigate the incidence of cardiovascular (e.g., heart attacks) and cerebrovascular (e.g., strokes) disease and relate these events to lifestyle and other health factors. Adults over 65 years old were randomly selected from Medicare rolls and invited to participate in the study. The dataset and a description of the variables are available in the repository.

## Questions

Fit an appropriate model for the response variable death (an indicator of death within the duration of the study). Include creatinine, age, an indicator of whether the participant ever smoked, sex, and race as predictors.

1. Write out your fitted model, and clearly describe all variables in your fitted model.
2. In language suitable for a scientific publication, summarise your findings about the association between all-cause mortality and creatinine, age, smoking history, sex, and race. Provide full inference on all variables in your model.
You are welcome to structure your response to Question 2 in two sections: a “Methods” paragraph and a “Results” paragraph. However, this is not mandatory. Feel free to review conventions in your field regarding organising methods and results sections (e.g., by downloading and reviewing recent publications
in your field), and to practice using these conventions in this homework. You might also choose to display relevant information about your fitted model in a table, following scientific conventions in your field.
3. Do your findings surprise you? Comment both on the direction of associations and significance of associations.
Consider reviewing some examples of “Discussion” sections from papers in your field, and consider adopting the style of these sections. You are not expected to write a full discussion section; please limit your response to 1 short paragraph.

## Optional questions (not for points)
In this question, you will show the “fun fact about odds ratios” from Lecture 18, Slide 14 – in both sample and population-level settings.

4. Consider the results from a study, which may have been a cohort study or a case-control study. Suppose that aparticipants in the study did not have the exposure and did not have a disease event; that bparticipants did not have the exposure and did develop disease; that cparticipants did have the exposure and did not develop disease, and dparticipants did have the exposure and did develop disease.
Stated differently, the number of participants in each combination of disease (Y= 1 indicates disease) and exposure (X= 1 indicates exposure) was as follows

|Number of participants| Y=0| Y=1|
|--------------------  |----|----|
|X=0| a| b|
|X=1| c|d|

What is the sample odds ratio for disease given exposure? What is the sample odds ratio for exposure given disease? Your answers should be expressions involving a, b, cand d.

5. Now, use Bayes’ Theorem to show that the true odds ratio for disease given exposure equals the true odds ratio for exposure given disease.
