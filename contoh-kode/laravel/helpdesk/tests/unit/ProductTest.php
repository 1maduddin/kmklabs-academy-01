<?php


class ProductTest extends \Codeception\TestCase\Test
{
    /**
     * @var \UnitTester
     */
    protected $tester;

    protected function _before()
    {
    }

    protected function _after()
    {
    }

    // tests
    public function testFindById()
    {
        $product = App\Product::find(1);
        $this->tester->seeRecord('products', [
            'id' => $product->id,
            'code' => $product->code
        ]);
    }

    public function testSaveDuplicateCode(){
        $p = new App\Product();
        $p->code = "P-006";

        try {
          $p->save();
          fail("Harusnya baris ini tidak dijalankan karena ada exception");
        } catch (Illuminate\Database\QueryException $e) {
          // sukses, memang harusnya ada exception
        } catch (Exception $e) {
          fail("Jenis exception salah, seharusnya QueryException");
        }
    }
}
