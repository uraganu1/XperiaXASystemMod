.class public abstract Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;
.super Ljava/lang/Object;
.source "RegistrationProcedure.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHomeDomain()Ljava/lang/String;
.end method

.method public abstract getPublicUri()Ljava/lang/String;
.end method

.method public abstract init()V
.end method

.method public abstract readSecurityHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation
.end method

.method public abstract writeSecurityHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation
.end method
