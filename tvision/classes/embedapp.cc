#define Uses_TEventQueue
#define Uses_TScreen
#define Uses_TObject
#define Uses_TMouse
#define Uses_TApplication
#include <tv.h>

//
#include <tv/embedapp.h>



ushort TEmbedApplication::executePoll()
{
//    endState = 0;
//    do  {
        TEvent e;
        getEvent( e );
        handleEvent( e );
        if( e.what != evNothing )
            eventError( e );
//        } while( endState == 0 );

    return endState;
}

