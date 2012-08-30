<div id="contenttext">
<h3><?php echo $title?></h3>
<?php
$depicao = strtoupper($_GET['depicao']);
$arricao = strtoupper($_GET['arricao']);
$reachalt = $_GET['reachaltitude'];
$vspeed1 = $_GET['VS1'];
$tas = $_GET['TAS'];
$cruisealt = $_GET['CA'];
$cruisespeed = $_GET['CS'];
$vspeed2 = $_GET['VS2'];
$arraiportalt = $_GET['AAA'];
$alttod = $_GET['AT'];
$distance = OperationsData :: getAirportDistance($depicao, $arricao);

$clmbtime = ($reachalt / $vspeed1) * 1/60;
$crstime = $distance / $cruisespeed - $clmbtime;
$destime1 = ($cruisealt - $arrairportalt) * 3/1000 ;
$destime = (($cruisespeed + 250)/2)/$destime1 * 1/10;
$flightduration = $clmbtime + $crstime + $destime;
$avvvs = ($vspeed1 + $vspeed2)/2
?>
<table cellpadding="0 cellspacing="0" width="80%" class="tablesorter">
<tr><td colspan="2"><hr></td></tr>
<tr>
<th align="center" colspan="2"><strong>Flight Data</strong></th>
</tr>
<tr><td colspan="2"><hr></td></tr>
<tr>
	<td><strong>Departure Airport:</strong></td>
	<td><?php echo $depicao ;?></td>
</tr>
<tr>
	<td><strong>Arrival Airport:</strong></td>
	<td><?php echo $arricao ;?></td>
</tr>
<tr>
	<td><strong>Distance:</strong></td>
	<td><?php echo round($distance, 0) ;?> nm</td>		
</tr>
<tr>
	<td><strong>Cruising Altitude:</strong></td>
	<td><?php echo $cruisealt ;?> ft</td>
</tr>
<tr>
	<td><strong>Reaching Altitude:</strong></td>
	<td><?php echo $reachalt ;?> ft</td>
</tr>
<tr>
	<td><strong>Average Vertical Speed:</strong></td>
	<td><?php echo $avvvs ;?> ft/m</td>
</tr>
<tr>
	<td><strong>Top Of Descend Distance:</strong></td>
	<td><?php echo $destime1 ;?> nm</td>
</tr>
<tr><td colspan="2"><hr></td></tr>
<tr>
<td align="left"><strong>Climb Time</strong></td>
<td align="left"><?php echo Util::FormatDuration($clmbtime) ;?> hrs</td>		
</tr>
<tr><td colspan="2"><hr></td></tr>
<tr>
<td align="left"><strong>Cruise Time</strong></td>
<td align="left"><?php echo Util::FormatDuration($crstime) ;?> hrs</td>		
</tr>
<tr><td colspan="2"><hr></td></tr>
<tr>
<td align="left"><strong>Descend & Approach Time</strong></td>
<td align="left"><?php echo Util::FormatDuration($destime) ;?> hrs</td>		
</tr>
<tr><td colspan="2"><hr></td></tr>
<tr>
<td align="left"><strong>Estimated Total Flight Duration from <?php echo $depicao ;?> to <?php echo $arricao; ?></strong></td>
<td align="left"><?php echo Util::FormatDuration($flightduration) ;?> hrs</td>		
</tr>
<tr><td colspan="2"><hr></td></tr>
</table>

</div>