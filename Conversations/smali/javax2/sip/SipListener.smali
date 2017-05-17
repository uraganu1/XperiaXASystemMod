.class public interface abstract Ljavax2/sip/SipListener;
.super Ljava/lang/Object;
.source "SipListener.java"


# virtual methods
.method public abstract processDialogTerminated(Ljavax2/sip/DialogTerminatedEvent;)V
.end method

.method public abstract processIOException(Ljavax2/sip/IOExceptionEvent;)V
.end method

.method public abstract processRequest(Ljavax2/sip/RequestEvent;)V
.end method

.method public abstract processResponse(Ljavax2/sip/ResponseEvent;)V
.end method

.method public abstract processTimeout(Ljavax2/sip/TimeoutEvent;)V
.end method

.method public abstract processTransactionTerminated(Ljavax2/sip/TransactionTerminatedEvent;)V
.end method

.method public abstract releaseWakeLock(Ljava/lang/String;)V
.end method

.method public abstract startKeepAliveTimer()V
.end method
