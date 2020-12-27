<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/app.css" type="text/css">
<title>Home</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="js/dobpicker.js"></script>
  <script>
  $(document).ready(function() {
		$.dobPicker({
			daySelector: '#dobday', /* Required */
			monthSelector: '#dobmonth', /* Required */
			yearSelector: '#dobyear', /* Required */
			dayDefault: 'Day', /* Optional */
			monthDefault: 'Month', /* Optional */
			yearDefault: 'Year', /* Optional */
			minimumAge: 00, /* Optional */
			maximumAge: 120 /* Optional */
		});
	});
  </script>
</head>
<body>
	<div class="container">
		<div class="content">
			<form id="form" action="GetInformation" method="post">
				<div style="text-align:center;"><h2>Enter your information</h2></div>
				<br>
				<div class="form-group">
					<label for="firstName" id="firstName-label">First Name</label>
					<input type="text" id="firstName" name="firstName" class="form-control" placeholder="Enter your first name" required>
				</div>
				<div class="form-group">
					<label for="lastName" id="lastName-label">Last Name</label>
					<input type="text" id="firstName" name="lastName" class="form-control" placeholder="Enter your last name" required>
				</div>
				<div class="form-group" id="birthday">
					<label for="birthday">Birthday</label>
					<select id="dobday" name="day" class="form-control"></select>
					<select id="dobmonth" name="month" class="form-control"></select>
					<select id="dobyear" name="year" class="form-control"></select>
				</div>
				<div class="form-group">
					<label>What is your health problem?</label>
					<select name="healthProblem" id="health-problem" class="form-control">
						<option disabled selected value>Your problem is about</option>
						<option value="certain infectious and parasitic">Certain infectious and parasitic</option>
						<option value="endocrine, nutritional and metabolic">Endocrine, nutritional and metabolic </option>
						<option value="mental and behavioural disorders">Mental and behavioural disorders</option>
						<option value="the nervous system">The nervous system</option>
						<option value="the eye and adnexa">The eye and adnexa</option>
						<option value="the ear and mastoid process">The ear and mastoid process</option>
						<option value="the circulatory system">The circulatory system</option>
						<option value="the respiratory system">The respiratory system</option>
						<option value="the digestive system">The digestive system</option>
						<option value="the skin and subcutaneous tissue">The skin and subcutaneous tissue</option>
						<option value="the musculoskeletal system and connective tissue">The musculoskeletal system and connective tissue</option>
						<option value="the genitourinary system">The genitourinary system</option>
						<option value="pregnancy, childbirth and the puerperium">Pregnancy, childbirth and the puerperium</option>
						<option value="certain conditions originating in the perinatal period">Certain conditions originating in the perinatal period</option>
						<option value="congenital malformations, deformations and chromosomal abnormalities">Congenital malformations, deformations and chromosomal abnormalities</option>
						<option value="injury, poisoning and certain other consequences of external causes">Injury, poisoning and certain other consequences of external causes</option>
						<option value="other">Other</option>
					</select>
				</div>
				<div class="form-group">
					<label>What is your insurance type?</label>
					<label><input type="radio" class="input-radio" value="public" name="insuranceType">Public</label>
					<label><input type="radio" class="input-radio" value="private" name="insuranceType">Private</label>
				</div>
				<div class="form-group">
					<label for="insuranceName" id="insuranceName">Insurance Name</label>
					<input type="text" id="insuranceName" name="insuranceName" class="form-control" placeholder="Enter your insurance name" required>
				</div>
				<div class="form-group">
					<label>What is your health information?</label>
					<textarea name="healthInformation" id="health-information" placeholder="Enter your health information here..."></textarea>
				</div>
				
				<div class="form-group">
					<button type="submit" id="submit" name="confirm" value="confirm" class="submit">Submit</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>