<h3><?php echo $title ;?></h3>
<form action="<?php echo url('/fduration/results') ;?>" method="post">
<table align="center" width="50%" style="border:2px solid; border-radius:20px;">
<tr><td colspan="2" align="center"><font size="3"><b>Enter Flight Info</b></font></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><td align="right"><strong>Departure Airport:</strong></td><td align="left"><input name="depicao" value="" > icao</td></tr>
<tr><td align="right"><strong>Arrival Airport:</strong></td><td align="left"><input name="arricao" value="" > icao</td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><td align="right"><strong>Reaching Altitude:</strong></td><td align="left"><input name="reachaltitude" value=""> ft</td></tr>
<tr><td align="right"><strong>Vertical Speed (V/S)</strong></td><td align="left"><input name="VS1" value=""> ft/m</td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><td align="right"><strong>Cruising Altitude:</strong></td><td align="left"><input name="CA" value=""> ft</td></tr>
<tr><td align="right"><strong>Cruise Speed (TAS or GS)</strong></td><td align="left"><input name="CS" value=""> kt</td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><td align="right"><strong>Vertical Speed (V/S)</strong></td><td align="left"><input name="VS2" value=""> ft/m</td></tr>
<tr><td align="right"><strong>Arrival Airport Altitude</strong></td><td align="left"><input name="AAA" value=""> ft</td></tr>
<tr><td align="right"><strong>Altitude at TOD(Top Of Descend)</strong></td><td align="left"><input name="AT" value=""> ft</td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><td align="center" colspan="2"><Input Type = "submit" Name = "dist" VALUE = "Calculate" ></td></tr>
</table>
</form>


