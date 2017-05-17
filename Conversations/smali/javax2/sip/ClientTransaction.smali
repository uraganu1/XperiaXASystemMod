.class public interface abstract Ljavax2/sip/ClientTransaction;
.super Ljava/lang/Object;
.source "ClientTransaction.java"

# interfaces
.implements Ljavax2/sip/Transaction;


# virtual methods
.method public abstract createCancel()Ljavax2/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation
.end method

.method public abstract sendRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation
.end method
