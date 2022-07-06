require 'vendor/autoload.php';

use \Osms\Osms;

$config = array(
    'clientId' => 'your_client_id',
    'clientSecret' => 'your_client_secret'
);

$osms = new Osms($config);

// retrieve an access token
$response = $osms->getTokenFromConsumerKey();

if (!empty($response['access_token'])) {
    $senderAddress = 'tel:+22500000000';
    $receiverAddress = 'tel:+22500000000';
    $message = 'Hello World!';
    $senderName = 'Optimus Prime';

    $osms->sendSMS($senderAddress, $receiverAddress, $message, $senderName);
} else {
    // error
}
