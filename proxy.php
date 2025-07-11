<?php
header("Content-Type: application/json");

$api_url = "https://llm.api.cloud.yandex.net/ai-language-models/v1/chat/completions";

$data = json_decode(file_get_contents('php://input'), true);

$ch = curl_init($api_url);
curl_setopt_array($ch, [
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_POST => true,
    CURLOPT_POSTFIELDS => json_encode($data),
    CURLOPT_HTTPHEADER => [
        "Content-Type: application/json",
        "Authorization: Api-Key AQVNxtCE7TMoTuwx9SXYC005HoLetUxXDnWe1_kB"
    ]
]);

$response = curl_exec($ch);
curl_close($ch);

echo $response;
