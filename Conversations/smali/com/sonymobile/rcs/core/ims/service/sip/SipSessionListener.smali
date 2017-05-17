.class public interface abstract Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionListener;
.super Ljava/lang/Object;
.source "SipSessionListener.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;


# virtual methods
.method public abstract handleContentTransferred(Ljava/lang/String;)V
.end method

.method public abstract handleCpimMessageData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleReceiveData(Ljava/lang/String;[B)V
.end method

.method public abstract handleSessionError(Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;)V
.end method
