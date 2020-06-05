-module(sample_handler).

-export([init/2]).

init(Req0,State) ->
   io:format("inside sample handler ....",[]),
   Req = cowboy_req:reply(200,#{
       <<"content-type">> => <<"text/plain">>
   }, State, Req0),
   {ok,Req,State}.