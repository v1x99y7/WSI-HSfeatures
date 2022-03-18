library(survival)
library(survminer)

# Read csv
data <- read.csv('./segmentation_features_undiscretized.csv')

# max_tumor_area
mta_cutpoint = surv_cutpoint(
  data = data,
  time = 'OS.time',
  event = 'OS',
  variables = 'max_tumor_area',
  minprop = 0.1,
  progressbar = TRUE
)
print(mta_cutpoint)
plot(mta_cutpoint, 'max_tumor_area', palette = 'npg')

mta_category = surv_categorize(mta_cutpoint)
mta_fit <- survfit(Surv(OS.time, OS) ~ max_tumor_area, data = mta_category)
ggsurvplot(fit = mta_fit,
           data = mta_category,
           surv.median.line = c('hv'),
           pval = TRUE,
           pval.method = TRUE,
           risk.table = TRUE)

# lymphocyte_inside_tumor
lit_cutpoint = surv_cutpoint(
  data = data,
  time = 'OS.time',
  event = 'OS',
  variables = 'lymphocyte_inside_tumor',
  minprop = 0.1,
  progressbar = TRUE
)
print(lit_cutpoint)
plot(lit_cutpoint, 'lymphocyte_inside_tumor', palette = 'npg')

lit_category = surv_categorize(lit_cutpoint)
lit_fit <- survfit(Surv(OS.time, OS) ~ lymphocyte_inside_tumor, data = lit_category)
ggsurvplot(fit = lit_fit,
           data = lit_category,
           surv.median.line = c('hv'),
           pval = TRUE,
           pval.method = TRUE,
           risk.table = TRUE)

# lymphocyte_around_tumor
lat_cutpoint = surv_cutpoint(
  data = data,
  time = 'OS.time',
  event = 'OS',
  variables = 'lymphocyte_around_tumor',
  minprop = 0.1,
  progressbar = TRUE
)
print(lat_cutpoint)
plot(lat_cutpoint, 'lymphocyte_around_tumor', palette = 'npg')

lat_category = surv_categorize(lat_cutpoint)
lat_fit <- survfit(Surv(OS.time, OS) ~ lymphocyte_around_tumor, data = lat_category)
ggsurvplot(fit = lat_fit,
           data = lat_category,
           surv.median.line = c('hv'),
           pval = TRUE,
           pval.method = TRUE,
           risk.table = TRUE)

# around_inside_ratio
air_cutpoint = surv_cutpoint(
  data = data,
  time = 'OS.time',
  event = 'OS',
  variables = 'around_inside_ratio',
  minprop = 0.1,
  progressbar = TRUE
)
print(air_cutpoint)
plot(air_cutpoint, 'around_inside_ratio', palette = 'npg')

air_category = surv_categorize(air_cutpoint)
air_fit <- survfit(Surv(OS.time, OS) ~ around_inside_ratio, data = air_category)
ggsurvplot(fit = air_fit,
           data = air_category,
           surv.median.line = c('hv'),
           pval = TRUE,
           pval.method = TRUE,
           risk.table = TRUE)

# total_stroma_area
tsa_cutpoint = surv_cutpoint(
  data = data,
  time = 'OS.time',
  event = 'OS',
  variables = 'total_stroma_area',
  minprop = 0.1,
  progressbar = TRUE
)
print(tsa_cutpoint)
plot(tsa_cutpoint, 'total_stroma_area', palette = 'npg')

tsa_category = surv_categorize(tsa_cutpoint)
tsa_fit <- survfit(Surv(OS.time, OS) ~ total_stroma_area, data = tsa_category)
ggsurvplot(fit = tsa_fit,
           data = tsa_category,
           surv.median.line = c('hv'),
           pval = TRUE,
           pval.method = TRUE,
           risk.table = TRUE)