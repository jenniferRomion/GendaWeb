#ifndef MYCONTEXT_H
#define MYCONTEXT_H

#include <QObject>
#include <QQmlContext>
#include <QQmlApplicationEngine>
#include <QDebug>

#include "filemanager.h"

class Utils;

class MyContext : public QObject
{
    Q_OBJECT

    /* message manager */
    Q_PROPERTY(QString errorMessage READ errorMessage WRITE setErrorMessage NOTIFY errorMessageChanged) //for debugPage
    Q_PROPERTY(QString wellDoneMessage READ wellDoneMessage WRITE setWellDoneMessage NOTIFY wellDoneMessageChanged) //for debugPage



    /* variables */
    QQmlContext* m_myContext;

    QString m_errorMessage;
    QString m_wellDoneMessage;


public:

    explicit MyContext(QObject *parent = nullptr);

    void initMyContext(QQmlContext *myContext);
    void loadMyContext();


    /* Get & Set functions of Q_PROPERTIES */
    /* *********************************** */


    QString errorMessage() const
    {
        return m_errorMessage;
    }

    QString wellDoneMessage() const
    {
        return m_wellDoneMessage;
    }


signals:

    void errorMessageChanged(QString errorMessage);
    void wellDoneMessageChanged(QString wellDoneMessage);

public slots:

    void setErrorMessage(QString errorMessage)
    {
        if (m_errorMessage == errorMessage)
            return;

        m_errorMessage = errorMessage;
        emit errorMessageChanged(m_errorMessage);
    }

    void setWellDoneMessage(QString wellDoneMessage)
    {
        if (m_wellDoneMessage == wellDoneMessage)
            return;

        m_wellDoneMessage = wellDoneMessage;
        emit wellDoneMessageChanged(m_wellDoneMessage);
    }




};

#endif // MYCONTEXT_H
