.class public abstract Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;
.super Ljava/lang/Object;
.source "HttpTransferManager.java"


# static fields
.field public static HTTP_TRACE_ENABLED:Z


# instance fields
.field private isCancelled:Z

.field private isPaused:Z

.field private listener:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private serverAddr:Ljava/lang/String;

.field private serverLogin:Ljava/lang/String;

.field private serverPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->HTTP_TRACE_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtHttpServer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->serverAddr:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtHttpLogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->serverLogin:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtHttpPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->serverPwd:Ljava/lang/String;

    .line 82
    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->isCancelled:Z

    .line 87
    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->isPaused:Z

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 100
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->listener:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    .line 101
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    .line 102
    .local v0, "cookieManager":Ljava/net/CookieManager;
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtHttpServer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->serverAddr:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtHttpLogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->serverLogin:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtHttpPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->serverPwd:Ljava/lang/String;

    .line 82
    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->isCancelled:Z

    .line 87
    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->isPaused:Z

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 112
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->listener:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    .line 113
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    .line 114
    .local v0, "cookieManager":Ljava/net/CookieManager;
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 115
    return-void
.end method


# virtual methods
.method public getHttpServerAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->serverAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpServerLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->serverLogin:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpServerPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->serverPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->listener:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    return-object v0
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->isCancelled:Z

    .line 161
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "interrupting transfer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->isCancelled:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->isPaused:Z

    return v0
.end method

.method protected openHttpConnection(Ljava/net/URL;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/net/ssl/HttpsURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 222
    .local v0, "cnx":Ljavax/net/ssl/HttpsURLConnection;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "User-Agent"

    .line 225
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->userAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-object v0

    .line 222
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 223
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pauseTransfer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->isPaused:Z

    .line 171
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;->httpTransferPaused(Z)V

    .line 172
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Pausing transfer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pausedOnNetworkFailure()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 178
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    :goto_0
    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->isPaused:Z

    .line 182
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;->httpTransferPaused(Z)V

    .line 183
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Pausing transfer due to Network drop"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetParamForResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->isCancelled:Z

    .line 199
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;->isPaused:Z

    .line 200
    return-void
.end method
