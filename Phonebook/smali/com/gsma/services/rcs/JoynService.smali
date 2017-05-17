.class public abstract Lcom/gsma/services/rcs/JoynService;
.super Ljava/lang/Object;
.source "JoynService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/JoynService$Error;,
        Lcom/gsma/services/rcs/JoynService$Build;
    }
.end annotation


# instance fields
.field private api:Landroid/os/IInterface;

.field protected ctx:Landroid/content/Context;

.field protected serviceListener:Lcom/gsma/services/rcs/JoynServiceListener;

.field private version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/JoynServiceListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v0, p0, Lcom/gsma/services/rcs/JoynService;->api:Landroid/os/IInterface;

    .line 123
    iput-object v0, p0, Lcom/gsma/services/rcs/JoynService;->version:Ljava/lang/Integer;

    .line 132
    iput-object p1, p0, Lcom/gsma/services/rcs/JoynService;->ctx:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/gsma/services/rcs/JoynService;->serviceListener:Lcom/gsma/services/rcs/JoynServiceListener;

    .line 134
    return-void
.end method

.method private callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/gsma/services/rcs/JoynService;->api:Landroid/os/IInterface;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/rcs/JoynService;->api:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 149
    if-nez p2, :cond_1

    const/4 v1, 0x0

    .line 153
    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/gsma/services/rcs/JoynService;->api:Landroid/os/IInterface;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x1

    .line 150
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/gsma/services/rcs/JoynService;->api:Landroid/os/IInterface;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 157
    new-instance v1, Lcom/gsma/services/rcs/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addServiceRegistrationListener(Lcom/gsma/services/rcs/JoynServiceRegistrationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/gsma/services/rcs/JoynService;->api:Landroid/os/IInterface;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    :cond_0
    const-string/jumbo v0, "addServiceRegistrationListener"

    const-class v1, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;

    .line 237
    invoke-direct {p0, v0, p1, v1}, Lcom/gsma/services/rcs/JoynService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public getServiceVersion()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/gsma/services/rcs/JoynService;->api:Landroid/os/IInterface;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/rcs/JoynService;->version:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/gsma/services/rcs/JoynService;->version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    :try_start_0
    const-string/jumbo v0, "getServiceVersion"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 203
    invoke-direct {p0, v0, v1, v2}, Lcom/gsma/services/rcs/JoynService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/gsma/services/rcs/JoynService;->version:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Lcom/gsma/services/rcs/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/gsma/services/rcs/JoynService;->api:Landroid/os/IInterface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isServiceRegistered()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/gsma/services/rcs/JoynService;->api:Landroid/os/IInterface;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    :cond_0
    const-string/jumbo v0, "isServiceRegistered"

    .line 223
    invoke-direct {p0, v0, v1, v1}, Lcom/gsma/services/rcs/JoynService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public removeServiceRegistrationListener(Lcom/gsma/services/rcs/JoynServiceRegistrationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/gsma/services/rcs/JoynService;->api:Landroid/os/IInterface;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    :cond_0
    const-string/jumbo v0, "removeServiceRegistrationListener"

    const-class v1, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;

    .line 252
    invoke-direct {p0, v0, p1, v1}, Lcom/gsma/services/rcs/JoynService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 257
    return-void
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/gsma/services/rcs/JoynService;->api:Landroid/os/IInterface;

    .line 171
    return-void
.end method
