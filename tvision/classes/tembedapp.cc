/*
 */
#define Uses_stdio
#define Uses_TEventQueue
#define Uses_TScreen
#define Uses_TObject
#define Uses_TMouse
#define Uses_TApplication
#define Uses_TEmbedApplication
#include <tv.h>

static TEventQueue *teq = 0;



void TEmbedApplication::resume()
{
  TScreen::resume();
  TEventQueue::resume();
  resetIdleTime(); // Don't count this time
}

void TEmbedApplication::suspend()
{
  TEventQueue::suspend();
  TScreen::suspend();
}

void initHistory();
void doneHistory();

TEmbedApplication::TEmbedApplication() :
    TProgInit( &TEmbedApplication::initStatusLine,
                  &TEmbedApplication::initMenuBar,
                  &TEmbedApplication::initDeskTop
                )
{
    if (!teq)
      teq = new TEventQueue();
    initHistory();
}

TEmbedApplication::~TEmbedApplication()
{
    doneHistory();
    delete teq;
    teq = 0;
}

ushort TEmbedApplication::executeInit()
{
    endState = 0;
    return endState;
}

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
