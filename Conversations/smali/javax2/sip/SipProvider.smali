.class public interface abstract Ljavax2/sip/SipProvider;
.super Ljava/lang/Object;
.source "SipProvider.java"


# virtual methods
.method public abstract addSipListener(Ljavax2/sip/SipListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/TooManyListenersException;
        }
    .end annotation
.end method

.method public abstract getListeningPoints()[Ljavax2/sip/ListeningPoint;
.end method

.method public abstract getNewClientTransaction(Ljavax2/sip/message/Request;)Ljavax2/sip/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/TransactionUnavailableException;
        }
    .end annotation
.end method

.method public abstract getNewServerTransaction(Ljavax2/sip/message/Request;)Ljavax2/sip/ServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/TransactionAlreadyExistsException;,
            Ljavax2/sip/TransactionUnavailableException;
        }
    .end annotation
.end method

.method public abstract removeListeningPoints()V
.end method

.method public abstract removeSipListener(Ljavax2/sip/SipListener;)V
.end method
