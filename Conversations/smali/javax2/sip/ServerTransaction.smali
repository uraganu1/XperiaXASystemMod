.class public interface abstract Ljavax2/sip/ServerTransaction;
.super Ljava/lang/Object;
.source "ServerTransaction.java"

# interfaces
.implements Ljavax2/sip/Transaction;


# virtual methods
.method public abstract sendResponse(Ljavax2/sip/message/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;,
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation
.end method
