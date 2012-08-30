<div id="contenttext">
<h3><?php echo $title?></h3>
<form width ="10%" action="<?php echo url('results') ;?>" method="get" name="distance">
<table cellpadding="0 cellspacing="0" "border="0" width="80%" class="tablesorter">
<tr><td colspan="2"><hr></td></tr>
<tr>
<th align="center" colspan="2"><strong>Flight Data</strong></th>
</tr>
<tr><td colspan="2"><hr></td></tr>
<tr>
	<td align="right"><strong>Departure Airport:</strong></td>
	<td align="left"><input id="depicao" name="depicao" class="airport_select" value="" > icao</td>
</tr>
<tr>
	<td align="right"><strong>Arrival Airport:</strong></td>
	<td align="left"><input id="arricao" name="arricao" class="airport_select" value="" > icao</td>
</tr>
<tr><td colspan="2"><hr></td></tr>
<tr>
<th align="center" colspan="2"><strong>Climb Data</strong></th>
</tr>
<tr><td colspan="2"><hr></td></tr>
<tr>
	<td align="right"><strong>Reaching Altitude:</strong></td>
	<td align="left"><input id="reachaltitude" name="reachaltitude" class="airport_select" value=""> ft</td>
</tr>
<tr>
	<td align="right"><strong>Vertical Speed (V/S)</strong></td>
	<td align="left"><input id="VS1" name="VS1" class="airport_select" value=""> ft/m</td>
</tr>
<tr><td colspan="2"><hr></td></tr>
<tr>
<th align="center" colspan="2"><strong>Cruise Data</strong></th>
</tr>
<tr><td colspan="2"><hr></td></tr>
<tr>
	<td align="right"><strong>Cruising Altitude:</strong></td>
	<td align="left"><input id="CA" name="CA" class="airport_select" value=""> ft</td>
</tr>
<tr>
	<td align="right"><strong>Cruise Speed (TAS or GS)</strong></td>
	<td align="left"><input id="CS" name="CS" class="airport_select" value=""> kt</td>
</tr>
<tr><td colspan="2"><hr></td></tr>
<tr>
<th align="center" colspan="2"><strong>Descend Data</strong></th>
</tr>
<tr><td colspan="2"><hr></td></tr>
<tr>
	<td align="right"><strong>Vertical Speed (V/S)</strong></td>
	<td align="left"><input id="VS2" name="VS2" class="airport_select" value=""> ft/m</td>
</tr>

<tr>
	<td align="right"><strong>Arrival Airport Altitude</strong></td>
	<td align="left"><input id="AAA" name="AAA" class="airport_select" value=""> ft</td>
</tr>
<tr>
	<td align="right"><strong>Altitude at TOD(Top Of Descend)</strong></td>
	<td align="left"><input id="AT" name="AT" class="airport_select" value=""> ft</td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr>	
	<td align="center" colspan="2"><Input Type = "submit" Name = "dist" VALUE = "Submit" ></td>
</tr>
<tr>
    <td>
</table>
</form>


</div>