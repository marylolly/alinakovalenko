<?
namespace App\Parser;

use Symfony\Component\DomCrawler\Crawler;
//use App\ProductUser;
//use App\Googlenew;
use Auth;
use App\Product;

class Aliexpress implements ParseContract
{

    public $crawler;

    public function __construct()
    {
        set_time_limit(0);
        header('Content-Type: text/html; charset=utf-8');
    }

    public function getParse($url=null, $id=null)
    {
        $file = file_get_contents($url);//извлекаем html-код страницы
        $this->crawler = new Crawler($file);//создаем новый объект
		
		
		
		$this->crawler->filter('.item')->each(function(Crawler $node, $i){
        $name = $node->text();
		 $risk_price = $node->filter('img')->count();
           if($risk_price == 0){
             $price = 0;
           }else{
             $price = $node->filter('.price')->text();
 }
		$pic = $node->filter('img')->attr('src');
	    echo $name;
		echo "<br />";
		echo "<img src='http:".$pic."'>";
		echo "<hr/>";
		
		
	
		});
		$this->crawler->filter('.list-item')->each(function(Crawler $node, $i){
   $name = $node->text();
   $pic = $node->filter('img')->attr('src');
   $obj = new Product;
   $obj->name = $name;
   $obj->picture = $pic;
   $obj->save();
});
    }
	
	
}