<?php
class Duration extends CodonModule
{
	public $title = 'Duration';
	
	public function index() 
        {
            $this->set('distance', OperationsData :: getAirportDistance($depicao, $arricao)); 
            $this->show('timecalculator.tpl');
			
            
        }
}
        
?>