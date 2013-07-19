<?php
class FDurData extends CodonData
{
	public static function FormatDuration($duration)
         {
          $time = $duration * 10/6;
          $hours = intval($time);
          $minutes = ($time-$hours) * 60;
          if($minutes >= 60)
           {
            $minutes = $minutes - 60;
            $hours = $hours + 1;
           }
          
           // adjust the number of hour digits
           $hfl = 2;
           if (strlen($hours) > 2)
           $hfl = strlen($hours);
           $format = "%0" . $hfl . "s:%02s";
           return sprintf($format, $hours, intval($minutes));
         }
}
?>