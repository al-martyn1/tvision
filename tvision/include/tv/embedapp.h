#pragma once


class CLY_EXPORT TEmbedApplication : public TApplication
{


public:

    TEmbedApplication() : TApplication() {}

    ushort executePoll();

};

