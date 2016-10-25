<?php

namespace Custom\Http\Middleware;

use Closure;
use Custom\Models\Internationalization\Language;
use Illuminate\Support\Facades\Request;

class Internationalization
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $languageCode = (empty(Request::header('Language'))) ? env('APP_LANG', 'es') : Request::header('Language');
        $request->session()->put('lang', Language::where('code', $languageCode)->first()->id);
        return $next($request);
    }
}
