<?
namespace App\Parser;

use Symfony\Component\DomCrawler\Crawler;
//use App\ProductUser;
//use App\Googlenew;
use Auth;

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
		$body=$this->crawler->filter('body')->html();
		echo $body;
    }
}