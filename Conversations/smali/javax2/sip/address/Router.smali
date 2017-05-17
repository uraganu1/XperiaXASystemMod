.class public interface abstract Ljavax2/sip/address/Router;
.super Ljava/lang/Object;
.source "Router.java"


# virtual methods
.method public abstract getNextHop(Ljavax2/sip/message/Request;)Ljavax2/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation
.end method

.method public abstract getOutboundProxy()Ljavax2/sip/address/Hop;
.end method
