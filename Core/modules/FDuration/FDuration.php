<?php
class FDuration extends CodonModule
{
	public function index() 
        {
	    $this->set('title','Flight Duration');
            $this->set('distance', OperationsData :: getAirportDistance($depicao, $arricao)); 
            $this->show('/fduration/timecalculator.php');
	}
	
	public function results() 
        {
        	$this->set('title','Flight Duration');
            $depicao = strtoupper($this->post->depicao);
            $arricao = strtoupper($this->post->arricao);
            $reachalt = $this->post->reachaltitude;
            $vspeed1 = $this->post->VS1;
            $tas = $this->post->TAS;
            $cruisealt = $this->post->CA;
            $cruisespeed = $this->post->CS;
            $vspeed2 = $this->post->VS2;
            $arraiportalt = $this->post->AAA;
            $alttod = $this->post->AT;
            $distance = OperationsData :: getAirportDistance($depicao, $arricao);

            $clmbtime = ($reachalt / $vspeed1)/100;
            $crstime = ($distance / $cruisespeed * 0.6) - $clmbtime;
            $tod = ($cruisealt - $arraiportalt) * 0.003 ;
            $destime = ($tod / $cruisespeed );
            $flightduration = $clmbtime + $crstime + $destime;
            $avvvs = ($vspeed1 + $vspeed2)/2;
            
            $this->set('depicao', $depicao);
            $this->set('arricao', $arricao);
            $this->set('arraiportalt', $arraiportalt);
            $this->set('flightduration', $flightduration);
            $this->set('cruisealt', $cruisealt);
            $this->set('reachalt', $reachalt);
            $this->set('avvvs', $avvvs);
            $this->set('tod', $tod);
            $this->set('clmbtime', $clmbtime);
            $this->set('crstime', $crstime);
            $this->set('destime', $destime);
            $this->set('distance', $distance); 
            $this->show('/fduration/results.php');
			
            
        }
}
        
?>
