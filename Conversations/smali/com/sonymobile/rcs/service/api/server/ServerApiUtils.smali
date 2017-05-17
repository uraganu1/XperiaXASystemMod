.class public Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;
.super Ljava/lang/Object;
.source "ServerApiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSessionState(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)I
    .locals 3
    .param p0, "session"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .prologue
    const/4 v1, -0x1

    .line 117
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    .line 118
    .local v0, "dialogPath":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    if-nez v0, :cond_0

    .line 133
    :goto_0
    return v1

    .line 119
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSessionCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSessionEstablished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSessionTerminated()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x3

    .line 130
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 121
    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 124
    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    .line 127
    goto :goto_0
.end method

.method public static isImsConnected()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    .line 95
    .local v0, "core":Lcom/sonymobile/rcs/core/Core;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    .line 99
    .local v2, "imsModule":Lcom/sonymobile/rcs/core/ims/ImsModule;
    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v1

    .line 103
    .local v1, "currentNetworkInterface":Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->isRegistered()Z

    move-result v3

    return v3

    .line 96
    .end local v1    # "currentNetworkInterface":Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
    .end local v2    # "imsModule":Lcom/sonymobile/rcs/core/ims/ImsModule;
    :cond_0
    return v3

    .line 100
    .restart local v2    # "imsModule":Lcom/sonymobile/rcs/core/ims/ImsModule;
    :cond_1
    return v3

    .line 104
    .restart local v1    # "currentNetworkInterface":Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
    :cond_2
    return v3
.end method

.method public static testCore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    const-string/jumbo v1, "Core is not instanciated"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static testIms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->isImsConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    const-string/jumbo v1, "Core is not connected to IMS"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static testPermission()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.sonymobile.rcs.permission.RCS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method public static testPermissionForExtensions()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.sonymobile.rcs.permission.RCS_EXTENSION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method
