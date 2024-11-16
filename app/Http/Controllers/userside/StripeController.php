<?php


namespace App\Http\Controllers\userside;
use App\Http\Controllers\Controller;


use Illuminate\Http\Request;
use Stripe\Stripe;
use Stripe\PaymentIntent;
use Stripe\Customer;
use Stripe\Exception\ApiErrorException;

class StripeController extends Controller
{
    public function stripeForm()
    {
        return view('stripe');
    }

    public function processPayment(Request $request)
    {
        try {
            Stripe::setApiKey("sk_test_51MvzNZCXOCh8OoqUMcYC33kfKoUhRxcajYdPOnNpc6AIvBmIKTRgXEEx5YmTSpvr1VlhaCrV2lVRaVXWeJrFghVw005w5vZFvP");


            $customer = Customer::create(array(
                "address" => [
                        "line1" => "Virani Chowk",
                        "postal_code" => "360001",
                        "city" => "Rajkot",
                        "state" => "GJ",
                        "country" => "PAK",
                    ],
                "email" => "demo@gmail.com",
                "name" => "Hardik Savani",
                "source" => $request->stripeToken
             ));
            

            // Create a PaymentIntent
            $paymentIntent = PaymentIntent::create([
                'amount' => $request->amount * 100, // Convert to cents
                'currency' => 'usd',
                'description' => 'Test Payment',
                'payment_method' => $request->payment_method_id,
                // 'confirmation_method' => 'manual',
                'confirm' => true,
                'automatic_payment_methods' => [
                    'enabled' => true,
                    'allow_redirects' => 'never',
                ],
                "shipping" => [
                    "name" => "Jenny Rosen",
                    "address" => [
                        "line1" => "510 Townsend St",
                        "postal_code" => "98140",
                        "city" => "San Francisco",
                        "state" => "CA",
                        "country" => "US",
                    ],
                ],
             
            ]);

            return response()->json([
                'clientSecret' => $paymentIntent->client_secret,
                'success' => true,
                'message' => 'Payment successful!',
            ]);
        } catch (ApiErrorException $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
            ]);
        }
    }
}