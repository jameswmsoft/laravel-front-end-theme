<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Exception;

class ApiController extends Controller
{
    protected function respond($data, $statusCode = 200, $headers = [])
    {
        return response()->json($data, $statusCode, $headers);
    }

    protected function register($data, $statusCode = 200, $headers = [])
    {

        $client = new GuzzleHttp\Client();
        $res = $client->get('https://api.sandbox.difitek.com/users', {
            "username" : "{{username}}", 
             "email" : "{{email}}",
             "phone_1" : "{{phone number}}",
            "password":"{{password}}",
            "custom": {"proof_of_accountability_status": "0","reason_to_accountablity_failure": "",
            }
        });
        // register $data to app_users table
        return response()->json($data, $statusCode, $headers);
    }



    /**
     * Respond with success.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondSuccess()
    {
        return $this->respond(null);
    }

    /**
     * Respond with created.
     *
     * @param $data
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondCreated($data)
    {
        return $this->respond($data, 201);
    }

    /**
     * Respond with no content.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondNoContent()
    {
        return $this->respond(null, 204);
    }

    /**
     * Respond with error.
     *
     * @param $message
     * @param $statusCode
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondError($message, $statusCode)
    {
        return $this->respond([
            'errors' => [
                'message' => $message,
                'status_code' => $statusCode
            ]
        ], $statusCode);
    }

    /**
     * Respond with unauthorized.
     *
     * @param string $message
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondUnauthorized($message = 'Unauthorized')
    {
        return $this->respondError($message, 401);
    }

    /**
     * Respond with forbidden.
     *
     * @param string $message
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondForbidden($message = 'Forbidden')
    {
        return $this->respondError($message, 403);
    }

    /**
     * Respond with not found.
     *
     * @param string $message
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondNotFound($message = 'Not Found')
    {
        return $this->respondError($message, 404);
    }

     /**
     * Respond with internal error.
     *
     * @param string $message
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondInternalError($message = 'Internal Error')
    {
        return $this->respondError($message, 500);
    }

}
