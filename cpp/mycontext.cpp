#include "mycontext.h"
#include <QDebug>
#include <iostream>

using namespace std;

/////////////////////////////////////////////////////////////////////////////
/// Initialisation
/////////////////////////////////////////////////////////////////////////////

MyContext::MyContext(QObject *parent) : QObject(parent), m_myContext(nullptr)
{
    setErrorMessage("");
    setWellDoneMessage("");
}

void MyContext::initMyContext(/*QQmlApplicationEngine &engine,*/ QQmlContext *myContext)
{
    m_myContext = myContext;

//    QString initialUrl = QStringLiteral("localhost:3000");

//    m_myContext->setContextProperty(QStringLiteral("initialUrl"),
//                                    Utils::fromUserInput(initialUrl));
    m_myContext->setContextProperty("MyContext", this);
}


// Fonction to update the QML
void MyContext::loadMyContext()
{
    // Send the data to Qml
    if( m_myContext != nullptr )
    {
        //m_myContext->setContextProperty("trekList", QVariant::fromValue( m_trekList ));
    }
    else
    {
        qDebug() << "Context has not been instantiated";
    }
}

