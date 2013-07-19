<?php 
$depname = OperationsData::getairportinfo($depicao);
$arrname = OperationsData::getairportinfo($arricao);
?>
<h3><?php echo $title?></h3>
<table width="100%" align="center" style="border:2px solid; border-radius:20px;">
<tr><td>&nbsp;</td></tr>
<tr><td align="center" colspan="4"><font size="4"><b>Results</b></font></td></tr>
<tr><td colspan="4"><hr></td></tr>
<tr>
 <td>Departure Airport:</td><td><strong><?php echo $depicao ;?> (<?php echo $depname->name ;?></strong>)</td>
 <td>Arrival Airport:</td><td><strong><?php echo $arricao ;?> (<?php echo $arrname->name ;?>)</strong></td>
</tr>
<tr>
 <td>Distance:</td><td><strong><?php echo round($distance, 0) ;?> nm</strong></td>
 <td>Cruising Altitude:</td><td><strong><?php echo $cruisealt ;?> ft</strong></td>
</tr>
<tr>
 <td>Reaching Altitude:</td><td><strong><?php echo $reachalt ;?> ft</strong></td>
 <td>Average Vertical Speed:</td><td><strong><?php echo $avvvs ;?> ft/m</strong></td>
</tr>
<tr>
 <td>Top Of Descend Distance:</td><td><strong><?php echo round($tod, 0) ;?> nm</strong></td>
 <td align="left">Climb Time</td><td align="left"><strong><?php echo FDurData::FormatDuration($clmbtime) ;?> hrs</strong></td>
</tr>
<tr>
 <td align="left">Cruise Time</td><td align="left"><strong><?php echo FDurData::FormatDuration($crstime) ;?> hrs</strong></td>
 <td align="left">Descend & Approach Time</td><td align="left"><strong><?php echo FDurData::FormatDuration($destime) ;?> hrs</strong></td>
</tr>
<tr><td colspan="4"><hr></td></tr>
<tr>
<td align="center" colspan="4"><font size="4" color="green"><strong>Estimated Total Flight Duration from <?php echo $depicao ;?> to <?php echo $arricao; ?>:&nbsp;&nbsp;&nbsp;
<?php echo FDurData::FormatDuration($flightduration) ;?> hrs</strong></font></td>		
</tr>
<tr><td>&nbsp;</td></tr>
</table>

