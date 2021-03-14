 var slayt = document.getElementsByClassName("slayt"); 
 
 var slaytSayısı = slayt.length;
 
 var slaytNo = 0; 
 
   slaytGoster(slaytNo); 
   
   
   function onceki() {
	   
	   slaytNo--;
	   
	   slaytGoster(slaytNo);
	   
	   clearInterval(s);
	   
   }
   
function sonraki() {
	   
	   slaytNo++;
	   
	   slaytGoster(slaytNo);
	    clearInterval(s);
   } 
   
var s =  setInterval(function() {
	   
	   slaytNo++;
	   
	   slaytGoster(slaytNo);
	   
   },3000);
   
 
 
function slaytGoster(slaytNumarası) {
	  
	    slaytNo = slaytNumarası;
		
		if(slaytNumarası >= slaytSayısı){
			
			slaytNo = 0;
			
		} 
		
		if(slaytNumarası < 0){
			
			slaytNo = slaytSayısı -1;
			
		}
	   
	    for(i = 0; i< slaytSayısı; i++) {
			
			slayt[i].style.display = "none";
			
			
		} 
		
		slayt[slaytNo].style.display = "block";
	   
	   
  }


function kontrol()
 {
	var ad = document.getElementById("ad").value;
	var soyad = document.getElementById("soyad").value;
	var email = document.getElementById("email").value;
	var at = email.indexOf("@");
    var nokta = email.lastIndexOf(".");
	var adres = document.getElementById("adres").value;
	var il = document.getElementById("il").value;
	var ogrenim = document.getElementById("ogrenim").selectedIndex;
	 
	
	if(ad == null || ad == "")
	{
		window.alert('Lütfen Ad alanını doldurunuz !!!');
		return false;
	} 

    else if(soyad == null || soyad == "")
	{
		window.alert('Lütfen Soyad alanını doldurunuz !!!');
		return false;
	}
	
	else if(email == null || email == "")
	{
		window.alert('Lütfen Email alanını doldurunuz !!!');
		return false;
	}
	
	else if(at < 1 || nokta < at + 2 || nokta + 2 >= email.length)
	{
		window.alert('Geçerli email adresi giriniz !!!');
        return false;
	}
	
	else if(adres == null || adres == "")
	{
		window.alert('Lütfen Adres alanını doldurunuz !!!');
		return false;
	}
	
	else if(il == null || il == "")
	{
		window.alert('Lütfen Il alanını doldurunuz !!!');
		return false;
	}
	
	var tiklanma1 = 0;
	for(var i = 0; i < document.getElementsByName('CINSIYET').length; i++)
	{
		if(document.getElementsByName('CINSIYET')[i].checked)
		{
			tiklanma1 = 1;
		}
	}
	 
	if(tiklanma1 == 0)
	{
		window.alert('Lütfen Cinsiyetinizi  seçiniz !!!');
		return false;
	}
	
	if(ogrenim == "")
	{
		window.alert('Lütfen Öğrenim durumunuzu  seçiniz !!!');
		return false;
	}
	 
	
	var tiklanma2 = 0;
	if(document.getElementsByName('KOSUL')[0].checked)
	{
			tiklanma2 = 1;
	}
	 
	if(tiklanma2 == 0)
	{
		window.alert('Katılım koşullarını kabul ediniz !!!');
		return false;
	}
	 
}
