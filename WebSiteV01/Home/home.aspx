<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

    <style>
             .faq-item {
            background: #f1f1f1;
            margin-bottom: 5px;
            padding: 10px;
            cursor: pointer;
        }
        .faq-item.active {
            background: #e0e0e0;
        }
        .faq-icon {
            background: #0099cc;
            color: white;
            padding: 10px;
            display: inline-block;
            width: 40px;
            text-align: center;
        }
        .why-us-item {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }
        .why-us-icon {
            width: 60px;
            height: 60px;
            background: #0099cc;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 50%;
            margin-right: 15px;
        }
        .why-us-icon i {
            font-size: 30px;
            color: white;
        }
        .feature-box {
            text-align: center;
            padding: 20px;
        }
        .feature-box i {
            font-size: 50px;
            color: #0099cc;
        }
        .feature-box h4 {
            margin-top: 15px;
            font-weight: bold;
        }
         .number-circle {
            display: inline-block;
            width: 30px;
            height: 30px;
            background: gray;
            color: white;
            border-radius: 50%;
            text-align: center;
            font-weight: bold;
            line-height: 30px;
            margin-right: 10px;
        }
        .health-item {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        .health-items{
  
            color: #0099cc;
           
        }
         .img-container img {
            width: 100%; /* Make images responsive */
            max-width: 150px; /* Set max width for images */
            height: auto; /* Maintain aspect ratio */
        }
    </style>
     <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container py-5">
        <div class="row text-center">
            <div class="col-md-4 feature-box">
                <%--<i class="fas fa-briefcase-medical"></i>--%>
                <i class="bi bi-hospital"></i>
                <h4>ADVANCED TECHNOLOGY</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis placerat urna.</p>
            </div>
            <div class="col-md-4 feature-box">
                <i class="bi bi-heart-pulse"></i>
                <h4>HEALTHCARE SOLUTIONS</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis placerat urna.</p>
            </div>
            <div class="col-md-4 feature-box">
               <i class="bi bi-heart-pulse"></i>
                <h4>24/7 AVAILABILITY</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis placerat urna.</p>
            </div>
        </div>
    </div>
    <%--this is faq's and why us?--%>
    <div class="container py-5">
        <div class="row">
            <!-- FAQ Section -->
            <div class="col-md-6">
                <h3>FAQ's</h3>
                <div class="faq-item">
                    <span class="faq-icon">+</span> What is the difference between lease and license agreement?
                </div>
                <div class="faq-item">
                    <span class="faq-icon">+</span> How ownership of property is acquired by a person?
                </div>
                <div class="faq-item">
                    <span class="faq-icon">+</span> Can a registered will be rectified or changed?
                </div>
                <div class="faq-item active">
                    <span class="faq-icon">-</span> Is the certified copy of a registered will available to anybody?
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.</p>
                </div>
            </div>
            
            <!-- Why Us Section -->
            <div class="col-md-6">
                <h3>Why Us?</h3>
                <div class="why-us-item">
                    <div class="why-us-icon">
                        <i class="bi bi-hospital"></i>
                    </div>
                    <div>
                        <h5>Great Infrastructure</h5>
                        <p>Nunc at pretium est curabitur commodo leac est venenatis egestas.</p>
                    </div>
                </div>
                <div class="why-us-item">
                    <div class="why-us-icon">
                        <i class="bi bi-heart-pulse"></i>
                    </div>
                    <div>
                        <h5>24/7 Ambulance Services</h5>
                        <p>Nunc at pretium est curabitur commodo leac est venenatis egestas.</p>
                    </div>
                </div>
                <div class="why-us-item">
                    <div class="why-us-icon">
                        <i class="bi bi-heart-pulse"></i>
                    </div>
                    <div>
                        <h5>Cutting Edge Technology</h5>
                        <p>Nunc at pretium est curabitur commodo leac est venenatis egestas.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--blog section--%>
      <div class="container my-5">
        <h2 class="mb-4">From the Blog</h2>
        <div class="row flex-nowrap overflow-auto">
            <div class="col-md-4">
                <div class="card">
                    <img src="image/blog-1.jpg" class="card-img-top" alt="Blog Image 1">
                    <div class="card-body">
                        <h5 class="card-title">Proin fermentum ut massa at</h5>
                        <p class="card-text">Proin lobortis tempus odio eget venenatis. Proin fermentum ut massa at bibendum.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                
                    <img src="image/blog-2.jpg" class="card-img-top" alt="Blog Image 2">
                    <div class="card-body">
                        <h5 class="card-title">Curabitur lobortis risus at</h5>
                        <p class="card-text">Tempus odio eget venenatis. Proin fermentum ut massa at bibendum non est.</p>
                    </div>
              
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="image/blog-3.jpg" class="card-img-top" alt="Blog Image 3">
                    <div class="card-body">
                        <h5 class="card-title">Heart Rate Predicts risk</h5>
                        <p class="card-text">Proin lobortis tempus odio eget venenatis. Proin fermentum ut massa at bibendum.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <%--top trend health bar--%>
    <div class="container  mt-4">
        <h2 class="fw-bold ">Top Trends – Health Talks</h2>
        <div class="row text-center mt-4">
            <div class="col-md-4">

                <div class="health-item"><span class="number-circle">1</span><h6 class="health-items">Breast Cancer Types</h6></div>
                <div class="health-item"><span class="number-circle">2</span><h6 class="health-items">Medicare Eligibility</h6></div>
                <div class="health-item"><span class="number-circle">3</span><h6 class="health-items">Medicaid Eligibility</h6></div>
                <div class="health-item"><span class="number-circle">4</span><h6 class="health-items">Yellow Fever</div>
            </div>
            <div class="col-md-4">
                <div class="health-item"><span class="number-circle">5</span><h6 class="health-items">Gonorrhea</h6></div>
                <div class="health-item"><span class="number-circle">6</span><h6 class="health-items">Flu Vaccine</h6></div>
                <div class="health-item"><span class="number-circle">7</span><h6 class="health-items">Gluten-Free Diet</h6></div>
                <div class="health-item"><span class="number-circle">8</span><h6 class="health-items">HIV / AIDS</h6></div>
            </div>
            <div class="col-md-4">
                <div class="health-item"><span class="number-circle">1</span><h6 class="health-items">Asthma in Cold Weather</h6></div>
                <div class="health-item"><span class="number-circle">2</span><h6 class="health-items">Insurance Deadlines</h6></div>
                <div class="health-item"><span class="number-circle">3</span><h6 class="health-items">Pumpkin Health Benefits</h6></div>
                <div class="health-item"><span class="number-circle">4</span><h6 class="health-items">Dietasical Syndrome</h6></div>
            </div>
        </div>
    </div>

    <%--partner section--%>
    <div class="container my-5">
        <h3 class="mb-4">Our Partners</h3>
        <div class="container text-center">
    <div class="row justify-content-center">
        <div class="col-6 col-sm-3 img-container">
            <img src="image/CellNetix_logo.png" class="img-fluid" alt="Image 1">
        </div>
        <div class="col-6 col-sm-3 img-container">
            <img src="image/sgvphoslogo.png" class="img-fluid" alt="Image 2">
        </div>
        <div class="col-6 col-sm-3 img-container">
            <img src="image/medlife.png" class="img-fluid" alt="Image 3">
        </div>
        <div class="col-6 col-sm-3 img-container">
            <img src="image/medblue.jpg" class="img-fluid" alt="Image 4">
        </div>
    </div>
</div>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</asp:Content>

