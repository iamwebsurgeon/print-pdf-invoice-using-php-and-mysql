	<?php 
		include_once 'db.php'; 

	?>

	<!DOCTYPE html>
	<html lang="en">
	<head>
		<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<title>Document</title>
	</head>
	<body>
		<script type="text/javascript">     
		    function PrintDiv() {    
		       var printInvoice = document.getElementById('printInvoice');
		       var popupWin = window.open('', '_blank', 'fullscreen=yes');
		       popupWin.document.open();
		       popupWin.document.write('<html><body onload="window.print()">' + printInvoice.innerHTML + '</html>');
		        popupWin.document.close();
		            }
	 	</script>

	 	<?php  
            $query = "SELECT * FROM `bills` limit 1";
            $runQuery = mysqli_query($conn, $query);


 	       if(mysqli_num_rows($runQuery)>  0){
            $row = mysqli_fetch_array($runQuery);

            $billId = $row['bill_id'];
            $patientName = ucwords($row['patient_name']);
            $age = $row['patient_age'];
            $sex = $row['patient_gender'];
            $mobileNo = $row['contact_no'];
            $refFromName = $row['ref_from_name'];
            $refToName = $row['ref_to_name'];
            $weightMri = $row['weight_mri'];
            $scanType = $row['scan_type'];
            $testType = $row['test_type'];
            $charges = $row['charges'];
            $discount = $row['discount'];
            $netAmount= $row['net_amount'];

            date_default_timezone_set("Asia/Karachi");

        	$currDateTime = date('m/d/Y h:i:s a', time());

            }
            
        ?>


	 	<div id="printInvoice" style="display:none; text-align: center;">
        <div style="width:80%; height:100%; margin-left: auto; margin-right: auto;">
          <h2 style="text-align: center;">Bahawalpur MRI & CT Scan Center Bill</h2>
          <h3 style="text-align: center;">Address: Near Chughtai Lab, Bahawalpur <br>
          Contact # 0334-7711220</h3>
          
                 <table style="width: 100%;">
                  <tbody>
                    <tr>
                      <td colspan="3">Bill #</td>
                      <td colspan="3">1111</td>
                      <td colspan="3">Date & Time</td>
                      <td colspan="3"><?php echo $currDateTime; ?></td>
                    </tr>
                    <tr>
                      <td colspan="3">Patient Name</td>
                      <td colspan="3"><?php echo $patientName; ?></td>
                      <td colspan="3">Age</td>
                      <td colspan="3"><?php echo $age; ?></td>
                     
                      
                    </tr>
                    <tr>
                      <td colspan="3">Sex</td>
                      <td colspan="3"><?php echo $sex; ?></td>
                      <td colspan="3">Mobile #</td>
                      <td colspan="3"><?php echo $mobileNo; ?></td>
                      
                    </tr>
                    <tr>
                      <td colspan="3">Referred From</td>
                      <td colspan="3"><?php echo $refFromName; ?></td>
                      <td colspan="3">Referred To</td>
                      <td colspan="3"><?php echo $refToName; ?></td>
                    </tr>

                    
                  </tbody>
                </table>
                
                <table border="3" style="border-collapse: collapse; width: 100%;">
                  <thead>
                    <tr>
                      <th colspan="3">Scan Type</th>
                      <th colspan="3">Test Type</th>
                      <th colspan="2">Amount</th>
                      <th colspan="2">Discount</th>
                      <th colspan="2">Net Amount</th>
                    </tr>
                  </thead>
                  <tbody>
                     
                    
                    <tr>
                      <td colspan="3" align="center"><?php echo $scanType; ?></td>
                      <td colspan="3" align="center"><?php echo $testType; ?></td>
                      <td colspan="2" align="right"><?php echo $charges; ?></td>
                      <td colspan="2" align="right"><?php echo $discount; ?></td>
                      <td colspan="2" align="right"><?php echo $netAmount; ?></td>
                    </tr>


                    <tr>
                      <td colspan="6">Total</td>
                      <td colspan="6" align="right"><?php echo $netAmount; ?></td>
                    </tr>
 
                    
                  </tbody>
                </table>
                <table style="width: 100%;">
                  <tbody>
                    <tr>
                      <td>Bill Created By</td>
                      <td colspan="11">Khan</td>
                    </tr>
                    <tr>
                      <td colspan="12">Four Thousands Rupee(s) and 00 Paisas Only</td>
                    </tr>
                    <tr>
                      <td colspan="3"> Print Date/Time</td>
                      <td colspan="9"><?php echo $currDateTime; ?></td>
                    </tr>
                    <tr>
                      <td colspan="3">Software Developed by:</td>
                      <td colspan=9>Logixx Grid | www.logixxgrid.com | 0334-7711220</td>
                      
                    </tr>
                  </tbody>
                </table>   
        </div>
      </div>

      <div class="container pt-5">
      	<h3>Invoice Print Using PHP & MySQL</h3>
      	<input type="button" value="Print" onclick="PrintDiv();" class="btn btn-success">
      </div>



       <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		
	</body>
	</html>