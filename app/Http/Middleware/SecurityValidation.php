<?php

namespace Custom\Http\Middleware;

use Closure;

class SecurityValidation
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
        if(auth()->check()){
            return $next($request);    
        }
        return redirect('/login');
    }
}
