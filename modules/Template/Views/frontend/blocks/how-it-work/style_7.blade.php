<section class="padding-top-50 padding-bottom-60 contact-card" style="background: url(&quot;https://patchworkhub.org/templates/classic-theme/images/2/Your%20image%20here.jpg&quot;);" id="about-section-four">
<div class="container-fluid">
    
    <div class="col-lg-12 text-center" style="color: rgb(63 38 102);font-size: 50px;line-height: 1;margin-bottom: 50px;">
    
    </div>
    
    <div class="row">
        <div class="col-md-3 text-right">
            
        </div>
      <div class="col-md-3"> 
          <div style="" class="how-it-work-box">
            <a href="http://stagging.patchworkhub.org/help-and-support/type/patchworkers-prem"><img class="img-fluid" src="https://patchworkhub.org/templates/classic-theme/images/Job seeker-no-text.png" style="margin: 0 auto 30px;display: table;height: 150px;" alt="Patchwork Images">
            <p style="" class="patchwork-text">Job Seeker</p>
            </a>
          </div>
        </div>
        
        
        <div class="col-md-3">
            <div style="" class="active how-it-work-box">
            <a href="http://stagging.patchworkhub.org/help-and-support/type/employers-prem-job"><img class="img-fluid" src="https://patchworkhub.org/templates/classic-theme/images/Employer-no-text.png" style="margin: 0 auto 30px;display: table;height: 150px;" alt="Patchwork Images">
            <p class="patchwork-text" style="">Employer</p>
            </a>
            </div>
        </div>

         <div class="col-md-3 text-left">
        </div>
    </div>

</div>    
</section>

<script>
function openTab(evt, tabName) {
  // Declare all variables
  var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the current tab, and add an "active" class to the button that opened the tab
  document.getElementById(tabName).style.display = "block";
  evt.currentTarget.className += " active";
}     
document.getElementById("defaultOpen").click();
</script>