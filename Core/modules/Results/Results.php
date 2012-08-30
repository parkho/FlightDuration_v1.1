<?php
class Results extends CodonModule
{
	public $title = 'Results';
	
	public function index() 
        {
            $this->set('distance', OperationsData :: getAirportDistance($depicao, $arricao)); 
            $this->show('results.tpl');
			
            
        }
}
        
?>