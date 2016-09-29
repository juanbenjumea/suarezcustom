<?php


namespace Custom\Http\Controllers\Auth;


use Custom\Http\Controllers\ApiController;
use Illuminate\Http\Request;
use Custom\Utils\Transformers\UserTransformer;
use Tymon\JWTAuth\Facades\JWTAuth;


class TokenAuthController extends ApiController {

    protected $userTransformer;

    public function __construct(UserTransformer $userTransformer)
    {
        $this->userTransformer = $userTransformer;
    }

    public function authenticate(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if ( ! $token = JWTAuth::attempt($credentials))
        {
            return $this->setStatusCode(401)->respondWithError('Invalid Credentials');
        }

        $user = JWTAuth::toUser($token);
        $data = array_merge($this->userTransformer->transform($user), ['token' => $token]);

        return $this->respond($data);
    }
}
