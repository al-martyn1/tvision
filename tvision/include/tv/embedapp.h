/*
 */

#if defined( Uses_TBackground )

#include <tv/backgrnd.h>

#endif


#if defined( Uses_TDeskTop )

#include <tv/desktop.h>

#endif


#if defined( Uses_TProgram )

#include <tv/program.h>

#endif




#if defined( Uses_TEmbedApplication ) && !defined( __TEmbedApplication )
#define __TEmbedApplication

class CLY_EXPORT TEmbedApplication : public TProgram
{

protected:

    TEmbedApplication();
    virtual ~TEmbedApplication();

public:

    virtual void suspend();
    virtual void resume();

    ushort executeInit();
    ushort executePoll();


};

#endif

