
## Analyzing Credit Risk data with Cloud Pak for Data on OpenShift

Welcome to our workshop! In this workshop we'll be using the Cloud Pak for Data platform to Collect Data, Organize Data, Analyze Data, and Infuse AI into our applications. The goals of this workshop are:

* Collect and virtualize data
* Visualize data with Data Refinery
* Create and deploy a machine learning model
* Monitor the model
* Create a Python app to use the model

### About this workshop

The introductory page of the workshop is broken down into the following sections:

* [Agenda](#agenda)
* [Compatability](#compatability)
* [Credits](#credits)

### About the data set

In this workshop we will be using a credit risk / lending scenario. In this scenario, lenders respond to an increased pressure to expand lending to larger and more diverse audiences, by using different approaches to risk modeling. This means going beyond traditional credit data sources to alternative credit sources (i.e. mobile phone plan payment histories, education, etc), which may introduce risk of bias or other unexpected correlations.

![Use Case Diagram](images/openscale-config/openscale-config-architecture.png)

The credit risk model that we are exploring in this workshop uses a training data set that contains 20 attributes about each loan applicant. The scenario and model use synthetic data based on the [UCI German Credit dataset](https://archive.ics.uci.edu/ml/datasets/Statlog+(German+Credit+Data)). The data is split into three CSV files and are located in the [data](../data/split) directory of the GitHub repository you will download in the pre-work section.

#### [Applicant Financial Data](../../data/split/applicant_financial_data.csv)

This file has the following attributes:

* CUSTOMERID (hex number, used as Primary Key)
* CHECKINGSTATUS
* CREDITHISTORY
* EXISTINGSAVINGS
* INSTALLMENTPLANS
* EXISTINGCREDITSCOUNT

#### **[Applicant Loan Data](../../data/split/applicant_loan_data.csv)**

This file has the following attributes:

* CUSTOMERID
* LOANDURATION
* LOANPURPOSE
* LOANAMOUNT
* INSTALLMENTPERCENT
* OTHERSONLOAN
* RISK

#### **[Applicant Personal Data](../../data/split/applicant_personal_data.csv)**

This file has the following attributes:

* CUSTOMERID
* EMPLOYMENTDURATION
* SEX
* CURRENTRESIDENCEDURATION
* OWNSPROPERTY
* AGE
* HOUSING
* JOB
* DEPENDENTS
* TELEPHONE
* FOREIGNWORKER
* FIRSTNAME
* LASTNAME
* EMAIL
* STREETADDRESS
* CITY
* STATE
* POSTALCODE

## Agenda

|  |   |   |
| -  | - | - |
| 00:05 | Welcome | Welcome to the Cloud Pak for Data workshop |
| 00:20 | Lecture - Intro and Overview | Introduction to Cloud Pak for Data and an Overview of this workshop |
| 00:20 | Lecture - Data Refinery and Data Virtualization  | Data Refinery and Data Virtualization |
| 00:30 | Lab - [Data Connection and Virtualization](data-connection-and-virtualization/README.md) and [importing the data into the project](addData/README.md) | Creating a new connection, virtualizing the data, importing the data into the project |
| 00:10 | Walkthrough - [Data Connection and Virtualization](data-connection-and-virtualization/README.md) | Creating a new connection, virtualizing the data, importing the data into the project |
| 00:15 | Lab - [Data Visualization with Data Refinery](data-visualization-and-refinery/README.md) | Refining the data, vizualizing and profiling the data |
| 00:10 | Walkthrough - [Data Visualization with Data Refinery](data-visualization-and-refinery/README.md) | Refining the data, vizualizing and profiling the data |
| 00:15 | Lecture - Watson Knowledge Catalog | Enterprise governance with Watson Knowledge Catalog |
| 00:20 | Lab - [Enterprise data governance for Viewers using Watson Knowledge Catalog](watson-knowledge-catalog-user/README.md) | Use and Enterprise data catalog to search, manage, and protect data |
| 00:05 | Walkthrough - [Enterprise data governance for Viewers using Watson Knowledge Catalog](watson-knowledge-catalog-user/README.md) | Use and Enterprise data catalog to search, manage, and protect data |
| 00:20 | Lab - [Enterprise data governance for Admins using Watson Knowledge Catalog](watson-knowledge-catalog-admin/README.md) | Create new Categories, Business terms, Policies and Rules in Watson Knowledge Catalog |
| 00:05 | Walkthrough - [Enterprise data governance for Admins using Watson Knowledge Catalog](watson-knowledge-catalog-admin/README.md) | Create new Categories, Business terms, Policies and Rules in Watson Knowledge Catalog |
| 00:15 | Lecture - Machine Learning | Machine Learning and Deep Learning concepts |
| 00:20 | Lab - AutoAI - [Machine Learning with AutoAI](machine-learning-autoai/README.md) | Use AutoAi to quickly generate a Machine Learning pipeline and model |
| 00:10 | Walkthrough - [Machine Learning with AutoAI](machine-learning-autoai/README.md) | Use AutoAi to quickly generate a Machine Learning pipeline and model |
| 00:10 | Closing | Other capabilities, review, and next steps |

## Compatability

This workshop has been tested on the following platforms:

* **macOS**: Mojave (10.14), Catalina (10.15)

## Credits

* [Scott D'Angelo](https://github.com/scottdangelo)
* [Omid Meh](https://github.com/omidmeh)
* [Javier Torres](https://github.com/jrtorres)
