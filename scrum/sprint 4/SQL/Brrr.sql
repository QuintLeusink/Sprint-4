<!DOCTYPE html>
<!-- saved from url=(0066)https://www.wiseowl.co.uk/sql/exercises/standard/basic-joins/4122/ -->
<html class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    
    

    <title>SQL | Basic joins exercise | Create inner joins to bring in fields from 3 different tables</title>

    
    <link href="https://www.wiseowl.co.uk/sql/exercises/standard/basic-joins/4122/" rel="canonical">

    
    
    <link rel="stylesheet" type="text/css" href="./Brrr_files/wol.min.css">



    
    <link rel="shortcut icon" href="https://www.wiseowl.co.uk/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="https://www.wiseowl.co.uk/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="https://www.wiseowl.co.uk/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="https://www.wiseowl.co.uk/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="https://www.wiseowl.co.uk/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="https://www.wiseowl.co.uk/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="https://www.wiseowl.co.uk/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="https://www.wiseowl.co.uk/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="https://www.wiseowl.co.uk/apple-touch-icon-152x152.png">

    <meta name="apple-mobile-web-app-title" content="Wise Owl">

<meta class="foundation-data-attribute-namespace"><meta class="foundation-mq-xxlarge"><meta class="foundation-mq-xlarge-only"><meta class="foundation-mq-xlarge"><meta class="foundation-mq-large-only"><meta class="foundation-mq-large"><meta class="foundation-mq-medium-only"><meta class="foundation-mq-medium"><meta class="foundation-mq-small-only"><meta class="foundation-mq-small"><style></style></head>
<body>

    
    <header>
        
        <div class="mobile-menu"></div>

        
        <div class="top-menu full-width">
            <nav>
                <div class="row">

                    <div class="left large-6 columns">
                        <ul>
                            <li class="dropdown">
                                <span>Training</span>

                                <ul>
                                    <li><a href="https://www.wiseowl.co.uk/excel/" title="Excel training courses">Excel</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/vba-macros/" title="VBA macros training courses">Excel VBA</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/ms-access/" title="Microsoft Access training courses">Microsoft Access</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/power-bi/" title="Power BI training courses">Power BI</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/report-builder/" title="Report Builder training courses">Report Builder</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/sql/" title="SQL training courses">SQL</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/analysis-services/" title="SQL Server Analysis Services training courses">SQL Server - SSAS</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/integration-services/" title="SQL Server Integrated Services training courses">SQL Server - SSIS</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/reporting-services/" title="SQL Server Reporting Services training courses">SQL Server - SSRS</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/visual-basic/" title="Visual VB training courses">Visual Basic</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/c-sharp/" title="Visual C# training courses">Visual C#</a></li>

                                </ul>
                            </li>
                            <li class="dropdown">
                                <span>About</span>

                                <ul>
                                    <li><a href="https://www.wiseowl.co.uk/sundry/about-wise-owl/">What we do</a></li>
                                    
                                    <li><a href="https://www.wiseowl.co.uk/trainers/">Meet the Wise Owls</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/benefits/">Why we're different</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/mannequin/">Watch a course!</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/enquiry/">Contact us</a></li>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <span>Venues</span>
                                <ul>
                                    <li><a href="https://www.wiseowl.co.uk/training/london/">London</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/training/manchester/">Manchester</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/training/uk/">Across the UK</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/onsite-training/">At your site</a></li>
                                </ul>
                            </li>



                            <li class="dropdown">
                                <a href="https://www.wiseowl.co.uk/resources/">Resources</a>
                                <ul>
                                    <li><a href="https://www.wiseowl.co.uk/blog/">Blogs</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/exercises/">Exercises</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/skill/">Skills assessment</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/videos/">Videos</a></li>
                                    <li><hr></li>
                                    <li><a href="https://www.wiseowl.co.uk/consultancy/">Consultancy</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/courseware/">Courseware</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/newsletter/">Newsletters</a></li>
                                    <li><a href="https://www.wiseowl.co.uk/publication/excel-vba-book/">Publications</a></li>
                                </ul>
                            </li>
                            <li><a href="https://www.wiseowl.co.uk/reviews/" title="475 testimonials in the last 3 years">475 reviews</a></li>

                        </ul>
                    </div>
                    <div class="right large-6 columns">

                        <ul>
                            <li class="contact">(0161) 883 3606</li>
                            <li><a class="button--alpha" href="https://www.wiseowl.co.uk/enquiry/">Contact</a></li>
                                <li>
                                    <a class="button--bravo" href="https://www.wiseowl.co.uk/account/login?returnUrl=https%3A%2F%2Fwww.wiseowl.co.uk%2Fsql%2Fexercises%2Fstandard%2Fbasic-joins%2F4122%2F" rel="nofollow">Sign in</a>
                                </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        
        <div class="header full-width">
            <div class="row">
                <div class="large-5 columns">
                    <div class="medium-center">
                        <div class="logo--main"><a href="https://www.wiseowl.co.uk/">WiseOwl Training - Established 1992</a></div>
                    </div>
                </div>
                <div class="large-7 columns">
                    <div id="jsHidden" class="our-courses large-4 columns woScriptHide" style="visibility: visible;">
                        <nav>
                            <a class="button--alpha" href="https://www.wiseowl.co.uk/sql/exercises/standard/basic-joins/4122/#">Our Training</a>
                            <div class="our-courses__dropdown">

                                <div class="our-courses__dropdown_menu">
                                    <div class="bannerHeading">
                                        Desktop training courses
                                    </div>
                                    
                                    <div class="col">
                                        <span><a href="https://www.wiseowl.co.uk/excel/" title="Excel training courses">Excel training</a></span>
                                        <ul>
                                            <li><a href="https://www.wiseowl.co.uk/courses/excel-introduction.htm" title="Introduction to Excel">Introduction to Excel</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/excel-intermediate.htm" title="Intermediate Excel">Intermediate Excel</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/excel-advanced.htm" title="Advanced Excel">Advanced Excel</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/excel-business-modelling.htm" title="Business Modelling in Excel">Business Modelling</a></li>
                                        </ul>
                                    </div>

                                    
                                    <div class="col">
                                        <span><a href="https://www.wiseowl.co.uk/power-bi/" title="Power BI training courses">Power BI training</a></span>
                                        <ul>
                                            <li><a href="https://www.wiseowl.co.uk/courses/power-bi-desktop.htm" title="Introduction to Power BI">Power BI Introduction</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/advanced-power-bi-desktop.htm" title="Advanced Power BI Desktop">Advanced Power BI</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/dax.htm" title="Writng DAX">Introduction to DAX</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/excel-data-analysis.htm" title="PoewrPivot">PowerPivot (Excel)</a></li>
                                        </ul>
                                    </div>

                                    
                                    <div class="col">
                                        <span><a href="https://www.wiseowl.co.uk/ms-access/" title="Microsoft Access training courses">MS Access training</a></span>
                                        <ul>
                                            <li><a href="https://www.wiseowl.co.uk/courses/microsoft-access-queries.htm" title="Introduction to Access">Queries in Access</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/microsoft-access-developers.htm" title="Access for Developers">Developers' Access</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/microsoft-access-vba.htm" title="Access VBA">Access Visual Basic</a></li>
                                        </ul>
                                    </div>

                                    
                                    <div class="col">
                                        <span><a href="https://www.wiseowl.co.uk/vba-macros/" title="VBA macros training courses">Excel VBA training</a></span>
                                        <ul>
                                            <li><a href="https://www.wiseowl.co.uk/courses/microsoft-excel-macros.htm" title="Introduction to VBA macros">Introduction to VBA</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/visual-basic-vba.htm" title="Advanced VBA">Advanced VBA</a></li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="our-courses__dropdown_menu">
                                    <div class="bannerHeading">
                                        SQL Server training courses
                                    </div>

                                    
                                    <div class="col">
                                        <span><a href="https://www.wiseowl.co.uk/reporting-services/" title="SQL Server Reporting Services training courses">Reporting Services</a></span>
                                        <ul>
                                            <li><a href="https://www.wiseowl.co.uk/courses/ssrs-reporting-services.htm" title="Introduction to Reporting Services (SSRS)">Reporting Services</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/advanced-reporting-services.htm" title="Advanced Reporting Services (SSRS)">Advanced SSRS</a></li>
                                        </ul>
                                    </div>

                                    
                                    <div class="col">
                                        <span><a href="https://www.wiseowl.co.uk/integration-services/" title="SQL Server Integrated Services training courses">Integration Services</a></span>
                                        <ul>
                                            <li><a href="https://www.wiseowl.co.uk/courses/ssis.htm" title="Introduction to Integrated Services (SSIS)">Integrated Services</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/advanced-ssis.htm" title="Advanced Integrated Services (SSIS)">Advanced SSIS</a></li>
                                        </ul>
                                    </div>

                                    
                                    <div class="col">
                                        <span><a href="https://www.wiseowl.co.uk/analysis-services/" title="SQL Server Analysis Services training courses">Analysis Services</a></span>
                                        <ul>
                                            <li><a href="https://www.wiseowl.co.uk/courses/ssas-cube-analysis-services.htm" title="SSAS Multi-dimensional modelling (cubes)">Multi-dimensional</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/ssas-tabular-analysis-services.htm" title="SSAS Tabular model">SSAS tabular</a></li>
                                        </ul>
                                    </div>

                                    
                                    <div class="col">
                                        <span><a href="https://www.wiseowl.co.uk/report-builder/" title="Report Builder training courses">Report Builder</a></span>
                                        <ul>
                                            <li><a href="https://www.wiseowl.co.uk/courses/report-builder-3.htm" title="Introduction to Report Builder">Report Builder Basics</a></li>
                                        </ul>
                                    </div>

                                </div>


                                <div class="our-courses__dropdown_menu">
                                    <div class="bannerHeading">
                                        Programming courses
                                    </div>

                                    
                                    <div class="col">
                                        <span><a href="https://www.wiseowl.co.uk/sql/" title="SQL training courses">SQL training</a></span>
                                        <ul>
                                            <li><a href="https://www.wiseowl.co.uk/courses/introduction-to-sql.htm" title="Introduction to SQL course">Introduction to SQL</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/advanced-sql-training.htm" title="Advanced SQL">Advanced SQL</a></li>
                                        </ul>
                                    </div>

                                    
                                    <div class="col">
                                        <span><a href="https://www.wiseowl.co.uk/c-sharp/" title="Visual C# training courses">C# training</a></span>
                                        <ul>
                                            <li><a href="https://www.wiseowl.co.uk/courses/intro-c-sharp.htm" title="Introduction to C#">Introduction to C#</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/intermediate-c-sharp.htm" title="Intermediate C#">Intermediate C#</a></li>
                                        </ul>
                                    </div>

                                    
                                    <div class="col">
                                        <span><a href="https://www.wiseowl.co.uk/visual-basic/" title="Visual VB training courses">Visual Basic training</a></span>
                                        <ul>
                                            <li><a href="https://www.wiseowl.co.uk/courses/intro-vb.htm" title="Introduction to Visual Basic">Introduction to VB</a></li>
                                            <li><a href="https://www.wiseowl.co.uk/courses/intermediate-vb.htm" title="Intermediate Visual Basic">Intermediate VB</a></li>
                                        </ul>
                                    </div>
                                </div>


                                <div class="our-courses__dropdown_menu">
                                    <div class="bannerHeadingBottom">
                                        Or why not ask us about running <a title="Onsite training courses" href="https://www.wiseowl.co.uk/onsite-training/">an onsite course</a> at your offices?
                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>

                    <div class="large-8 columns">
<form action="https://www.wiseowl.co.uk/search/start" method="post">                            <input class="search" type="text" name="what" value="Search for something here!" onfocus="if(this.value==&#39;Search for something here!&#39;) this.value=&#39;&#39;;">
                            <button type="submit" value="search" class="search__submit">Go</button>
</form>                    </div>
                </div>
            </div>
        </div>

        
            <div id="cookie-consent" class="cookie">
                <div class="woHideWhenSmallish">
                    This website uses cookies!

                    <a class="cookieButton" href="https://www.wiseowl.co.uk/home/cookies/">I've read this</a>
                    <a class="cookieButton" href="https://www.wiseowl.co.uk/sundry/cookies/">Tell me more</a>
                </div>
                <div class="woShowWhenSmallish">
                    This website uses cookies!

                    <a class="cookieButton" href="https://www.wiseowl.co.uk/home/cookies/">OK</a>
                    <a class="cookieButton" href="https://www.wiseowl.co.uk/sundry/cookies/">More</a>
                </div>
            </div>

        <script async="" src="./Brrr_files/analytics.js.download"></script><script>

            
        document.getElementById('jsHidden').style.visibility = 'visible';

        </script>
    </header>
    <div id="body">

        
        
<div class="breadcrumb full-width">
    <div class="row">
        <div class="large-6 columns">
            <ul>
                
                <li class="breadcrumb__home">
                    <a href="https://www.wiseowl.co.uk/">Wise Owl Training</a>
                </li>

                
                    <li><a href="https://www.wiseowl.co.uk/sql/">SQL training</a></li>
                    <li><a href="https://www.wiseowl.co.uk/sql/exercises/">Exercises</a></li>
                    <li><a href="https://www.wiseowl.co.uk/sql/exercises/standard/">SQL</a></li>
                    <li><a href="https://www.wiseowl.co.uk/sql/exercises/standard/basic-joins/">Basic joins</a></li>
                    <li><a href="https://www.wiseowl.co.uk/sql/exercises/standard/basic-joins/4122/">Create inner joins to bring in fields from 3 different tables</a></li>

            </ul>

            <div class="breadcrumbPost">
                This page has 0 threads
                &nbsp; |&nbsp;
                <a href="https://www.wiseowl.co.uk/post/new?t=78&amp;r=4122" rel="nofollow">Add post</a>
            </div>

        </div>

        
        <div class="large-6 columns breadcrumbFeedback" itemscope="" itemtype="http://data-vocabulary.org/Review-aggregate">

            <div class="breadcrumbFeedbackTitle">
                <img src="./Brrr_files/five-star2.png" alt="Five star reviews" title="Training course reviews">
                <span class="breadcrumbFeedbackTop" itemprop="itemreviewed">Outstanding course feedback</span><br>
                <span itemprop="rating" itemscope="" itemtype="http://data-vocabulary.org/Rating">
                    Average score <span itemprop="average">9.30</span> out of <span itemprop="best">10</span>
                </span>, based on <span itemprop="votes"> <a href="https://www.wiseowl.co.uk/feedback/">7964</a></span> reviews<span class="breadcrumbReviewCount" itemprop="count">7964</span>.


            </div>
        </div>
    </div>
</div>


<div class="full-width main-content-wrap">
    <div class="row">
        <div class="large-12 columns">

            
            

<div class="woMenu large-3 medium-4 small-12 columns left">


   
    
<div class="woMenuDonate">
    If you found this exercise useful and you’d like to say thanks you can <a title="Donate to Wise Owl" href="https://www.wiseowl.co.uk/donate?t=3">click here</a> to make a contribution. Thanks for trying our exercises!
</div>
    
        <p class="woMenuTitle">WISE OWL EXERCISES</p>
        <div>
            <ul class="woMenuList">

                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/ms-access/exercises/">Access exercises (91)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/c-sharp/exercises/">C# exercises (79)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/excel/exercises/">Excel exercises (273)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/power-bi/exercises/">Power BI exercises (163)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/report-builder/exercises/">Report Builder exercises (138)</a></li>
                <li class="woMenuItemCurrent"><a href="https://www.wiseowl.co.uk/sql/exercises/">SQL exercises (198)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/analysis-services/exercises/">SSAS exercises (51)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/integration-services/exercises/">SSIS exercises (40)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/reporting-services/exercises/">SSRS exercises (96)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/vba-macros/exercises/">VBA exercises (85)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/visual-basic/exercises/">Visual Basic exercises (46)</a></li>

            </ul>
        </div>
        <p class="woMenuTitle">SQL EXERCISES</p>
        <div>
            <ul class="woMenuList">

                <li class="woMenuItemCurrent"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/">SQL (198)</a></li>

            </ul>
        </div>
        <p class="woMenuTitle">SQL EXERCISES</p>
        <div>
            <ul class="woMenuList">

                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/simple-queries/">Simple Queries (4)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/setting-criteria-using-where/">Setting criteria using WHERE (5)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/calculations/">Calculations (7)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/calculations-using-dates/">Calculations using dates (4)</a></li>
                <li class="woMenuItemCurrent"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/basic-joins/">Basic joins (8)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/more-exotic-joins/">More exotic joins (2)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/aggregation-and-grouping/">Aggregation and grouping (8)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/views/">Views (5)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/subqueries/">Subqueries (5)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/stored-procedures/">Stored procedures (5)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/variables/">Variables (8)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/parameters-and-return-values/">Parameters and return values (11)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/testing-conditions/">Testing conditions (1)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/looping/">Looping (3)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/scalar-functions/">Scalar functions (6)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/transactions/">Transactions (5)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/creating-tables/">Creating tables (5)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/temporary-tables-and-table-variables/">Temporary tables and table variables (9)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/table-valued-functions/">Table-valued functions (6)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/derived-tables-and-ctes/">Derived tables and CTEs (13)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/dynamic-sql/">Dynamic SQL (4)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/pivots/">Pivots (2)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/triggers/">Triggers (2)</a></li>
                <li class="woMenuItem"><a href="https://www.wiseowl.co.uk/sql/exercises/standard/archived/">Archived (70)</a></li>

            </ul>
        </div>
    
</div>


            
            <div class="main-content large-9 medium-8 small-12 columns right">

                <div>

                    
                    <h1 class="gamma">
                        SQL | Basic joins exercise | Create inner joins to bring in fields from 3 different tables
                    </h1>

                    <p>
                        This exercise is provided to allow potential course delegates to choose the correct Wise Owl Microsoft training course, and may not be reproduced in whole or in part in any format without the prior written consent of Wise Owl.
                    </p>

                    <div class="woHideWhenMedium">
                        <!-- Google Adsense -->
                        <script async="" src="./Brrr_files/f.txt"></script>
                        <!-- MVC exercises ad -->
                        <ins class="adsbygoogle" style="display: inline-block; width: 728px; height: 90px" data-ad-client="ca-pub-5152709705467671" data-ad-slot="8336690387"></ins>
                        <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                    </div>

                    <p style="margin-top: 20px;">
                            The answer to the exercise will be included and explained if you attend  the course listed below!
                    </p>

                    <div class="woExerciseShowRow">

                        
                        <div class="woExerciseShowTitle">

                            <table>
                                <tbody><tr>
                                    <td class="woExerciseShowLabel">Software&nbsp;==&gt; </td>
                                    <td>
                                        SQL &nbsp;(<a href="https://www.wiseowl.co.uk/sql/exercises/standard/">198 exercises</a>)
                                    </td>
                                </tr>
                                <tr>
                                    <td class="woExerciseShowLabel">Version&nbsp;==&gt; </td>
                                    <td>Any version of SQL Server</td>
                                </tr>
                                <tr>
                                    <td class="woExerciseShowLabel">Topic&nbsp;==&gt; </td>
                                    <td>
                                        Basic joins &nbsp;(<a href="https://www.wiseowl.co.uk/sql/exercises/standard/basic-joins/">8 exercises</a>)

                                    </td>
                                </tr>
                                <tr>
                                    <td class="woExerciseShowLabel">Level&nbsp;==&gt; </td>
                                    <td>Average difficulty</td>
                                </tr>
                                    <tr>
                                        <td class="woExerciseShowLabel">Course&nbsp;==&gt; </td>
                                        <td>

<a href="https://www.wiseowl.co.uk/courses/introduction-to-sql.htm">Introduction to SQL</a>                                        </td>
                                    </tr>
                            </tbody></table>

                        </div>
                    </div>

                            <div class="woHideWhenSmall">
                                <div class="woExerciseShowFiles epsilon">
                                    Before you can do this exercise, you'll need to download and unzip
                                    <a href="https://www.wiseowl.co.uk/files/execise-question-files/qf-295.zip">this file</a> (if you have any problems doing this, <a href="https://www.wiseowl.co.uk/sundry/exercises-unzipping/">click here</a> for help).

                                
                                    Once you've done this:
                                    <ol>
                                        <li>Go into SQL Server Management Studio;</li>
                                        <li>Open the SQL file you've just unzipped (you can press <span class="bpSpanKey">CTRL</span> + <span class="bpSpanKey">O</span> to do this); then</li>
                                        <li>Execute this script.</li>
                                    </ol>
                                    <p>This will generate the database that you'll need to use in order to do this exercise (note that the database and script are only to be used for exercises published on this website, and may not be reused or distributed in any form without the prior written permission of Wise Owl).</p>

                            </div>
                        </div>


                    <!-- don't show exercises on small screens -->
                    <div class="woShowWhenSmall">

                        <p>You need a minimum screen resolution of about 700 pixels width to see our exercises.  This is because they contain diagrams and tables which would not be viewable easily on a mobile phone or small laptop.  Please use a larger tablet, notebook or desktop computer, or change your screen resolution settings.</p>

                    </div>

                    
                    <div class="woHideWhenSmall">
                        <div class="woExerciseShowBody">

                            
                            
<p>Create a query to link together the following 3 tables:</p>
<ul>
				<li><strong>tblContinent</strong></li>
				<li><strong>tblCountry</strong></li>
				<li><strong>tblEvent</strong></li>
</ul>
<p>Your query should list out those events which took place in either:</p>
<ul>
				<li>the continent called <strong>Antarctic</strong>; or</li>
				<li>the country called <strong>Russia</strong>.</li>
</ul>
<p>Here's what your query should show:</p>
<div class="bpImgCentre">
				<img src="./Brrr_files/i2.jpg" alt="The events to list" title="The events to list"><p>Events in a cold climate ...</p></div><p>
Save this query as <strong>Brrr</strong>, then close it down.</p>

                        </div>
                    </div>

                </div>
                
                
<div id="posts" class="woPostListTitle">
    
    <span class="woPostListTitleLeft">This page has </span>0 threads
    <span class="woPostListTitleRight">
        <a href="https://www.wiseowl.co.uk/post/new?t=78&amp;r=4122" rel="nofollow">Add post</a>
    </span>
</div>


<div class="woPostListBlock">
    <div class="row">

        <div class="large-12 medium-12 small-12 columns left">



        </div>

    </div>
</div>



                <div style="margin-top: 20px;">
                    <script async="" src="./Brrr_files/f.txt"></script>
                    <ins class="adsbygoogle" style="display:block" data-ad-format="autorelaxed" data-ad-client="ca-pub-5152709705467671" data-ad-slot="1115416648"></ins>
                    <script>
                        (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>


                </div>
            </div>

        </div>
    </div>
</div>


    </div>

    <footer class="footer full-width">

        <div class="row">
            <div class="large-12 columns tac">
                <div class="woHomeAddress">
                    <div class="row">

                        <div class="large-3 medium-2 small-0 columns">
                            &nbsp;
                        </div>

                        <div itemscope="" itemtype="http://schema.org/PostalAddress" class="large-2 medium-3 small-12 columns tar woHomeAddressLeft">
                            <span itemprop="name" class="woHomeAddressTitle">London training centre</span>
                            <span itemprop="streetAddress">Holland House</span>
                            <span itemprop="streetAddress">1-4 Bury Street</span>
                            <span itemprop="addressLocality">LONDON</span>
                            <span itemprop="postalCode">EC3A 5AW</span>
                        </div>
                        <div itemscope="" itemtype="http://schema.org/PostalAddress" class="large-2 medium-3 small-12 columns tac woHomeAddressCentre">
                            <span itemprop="name" class="woHomeAddressTitle">Manchester training centre</span>
                            <span itemprop="streetAddress">Barlow House</span>
                            <span itemprop="streetAddress">Minshull Street</span>
                            <span itemprop="addressLocality">MANCHESTER</span>
                            <span itemprop="postalCode">M1 3DZ</span>
                        </div>
                        <div itemscope="" itemtype="http://schema.org/PostalAddress" class="large-2 medium-3 small-12 columns tal woHomeAddressRight">
                            <span itemprop="name" class="woHomeAddressTitle">Head office</span>
                            <span itemprop="streetAddress">Kingsmoor House</span>
                            <span itemprop="streetAddress">Railway Street</span>
                            <span itemprop="addressLocality">GLOSSOP</span>
                            <span itemprop="postalCode">SK13 2AA</span>
                        </div>

                        <div class="large-2 medium-2 small-0 columns">
                            &nbsp;
                        </div>

                    </div>

                </div>
                <div class="large-12 columns tac">
                    <ul class="social-icons">
                        <li class="icon-facebook"><a title="Wise Owl Facebook page" href="https://www.facebook.com/pages/Wise-Owl-Business-Solutions/145553635466759">Facebook</a></li>
                        <li class="icon-twitter"><a title="Wise Owl - Twitter feed" href="https://twitter.com/wiseowltraining">Twitter</a></li>
                        <li class="icon-youtube"><a title="Wise Owl YouTube channel" href="https://www.youtube.com/user/WiseOwlTutorials">YouTube</a></li>
                        <li class="icon-gplus"><a title="Wise Owl - Google+" href="https://plus.google.com/112502917747148301991/">g+</a></li>
                    </ul>
                </div>
                <div class="large-12 columns tac">
                    <div class="footer-note">
                        <p>© Wise Owl Business Solutions Ltd 2019. All Rights Reserved</p>
                        
                        <p><a href="https://www.wiseowl.co.uk/sundry/terms-conditions/" rel="nofollow">Terms &amp; Conditions</a></p>
                        <p><a href="https://www.wiseowl.co.uk/sundry/privacy-policy/" rel="nofollow">Privacy policy</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    
    

    <script src="./Brrr_files/jquery-1.12.4.min.js.download"></script>

    <!-- extra scripts used by date picker controls (for more info, see my text help file in same folder) -->

    <script src="./Brrr_files/all"></script>


    
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-7467174-1', 'auto');
        ga('send', 'pageview');

    </script>

    
    



</body></html>