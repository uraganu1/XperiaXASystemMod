.class public interface abstract Ljavax2/sip/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getDialog()Ljavax2/sip/Dialog;
.end method

.method public abstract getRequest()Ljavax2/sip/message/Request;
.end method

.method public abstract setRetransmitTimers(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method
