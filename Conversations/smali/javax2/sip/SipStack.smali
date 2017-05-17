.class public interface abstract Ljavax2/sip/SipStack;
.super Ljava/lang/Object;
.source "SipStack.java"


# virtual methods
.method public abstract createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax2/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/TransportNotSupportedException;,
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createSipProvider(Ljavax2/sip/ListeningPoint;)Ljavax2/sip/SipProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/ObjectInUseException;
        }
    .end annotation
.end method

.method public abstract deleteSipProvider(Ljavax2/sip/SipProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/ObjectInUseException;
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/ProviderDoesNotExistException;,
            Ljavax2/sip/SipException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
