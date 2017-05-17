.class public interface abstract Ljavax2/sip/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract createRequest(Ljava/lang/String;)Ljavax2/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation
.end method

.method public abstract getLocalSeqNumber()J
.end method

.method public abstract incrementLocalSequenceNumber()V
.end method

.method public abstract isServer()Z
.end method

.method public abstract sendAck(Ljavax2/sip/message/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation
.end method

.method public abstract sendRequest(Ljavax2/sip/ClientTransaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/TransactionDoesNotExistException;,
            Ljavax2/sip/SipException;
        }
    .end annotation
.end method
