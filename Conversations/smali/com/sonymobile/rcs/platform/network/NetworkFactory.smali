.class public abstract Lcom/sonymobile/rcs/platform/network/NetworkFactory;
.super Ljava/lang/Object;
.source "NetworkFactory.java"


# static fields
.field private static factory:Lcom/sonymobile/rcs/platform/network/NetworkFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->factory:Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory()Lcom/sonymobile/rcs/platform/network/NetworkFactory;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->factory:Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    return-object v0
.end method

.method public static loadFactory(Ljava/lang/String;)V
    .locals 4
    .param p0, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/platform/FactoryException;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v1, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->factory:Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    if-nez v1, :cond_0

    .line 51
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    sput-object v1, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->factory:Lcom/sonymobile/rcs/platform/network/NetworkFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-void

    .line 47
    :cond_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/platform/FactoryException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t load the factory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/platform/FactoryException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract createDatagramConnection()Lcom/sonymobile/rcs/platform/network/DatagramConnection;
.end method

.method public abstract createSecureSocketClientConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;
.end method

.method public abstract createSimpleSecureSocketClientConnection(Ljava/lang/String;)Lcom/sonymobile/rcs/platform/network/SocketConnection;
.end method

.method public abstract createSocketClientConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;
.end method

.method public abstract createSocketServerConnection()Lcom/sonymobile/rcs/platform/network/SocketServerConnection;
.end method

.method public abstract getLocalIpAddress(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;ILjava/lang/String;)Ljava/lang/String;
.end method
