.class public Lcom/sonymobile/rcs/provider/settings/RcsSettings;
.super Ljava/lang/Object;
.source "RcsSettings.java"


# static fields
.field private static instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;


# instance fields
.field private cr:Landroid/content/ContentResolver;

.field private databaseUri:Landroid/net/Uri;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private final mSettingsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 79
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->databaseUri:Landroid/net/Uri;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->cr:Landroid/content/ContentResolver;

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->mSettingsCache:Ljava/util/Map;

    .line 118
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->reloadRcsSettingsCache()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/provider/settings/RcsSettings;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->mSettingsCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/provider/settings/RcsSettings;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/provider/settings/RcsSettings;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->copyRcsSettingsToMap(Ljava/util/Map;)V

    return-void
.end method

.method public static checkClientMode(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientMode"    # I

    .prologue
    .line 3834
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3837
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMessagingUX()I

    move-result v0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 3835
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3837
    goto :goto_1
.end method

.method private copyRcsSettingsToMap(Ljava/util/Map;)V
    .locals 9
    .param p1, "settingsCache"    # Ljava/util/Map;

    .prologue
    const/4 v6, 0x0

    .line 124
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->databaseUri:Landroid/net/Uri;

    const-string/jumbo v5, "key"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 129
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 141
    if-nez v6, :cond_5

    .line 145
    :goto_1
    return-void

    .line 141
    :cond_1
    if-nez v6, :cond_2

    .line 142
    :goto_2
    return-void

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 130
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "List of settings:"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 141
    if-nez v6, :cond_6

    .line 142
    :goto_3
    throw v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/4 v0, 0x1

    .line 133
    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "key":Ljava/lang/String;
    const/4 v0, 0x2

    .line 134
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "value":Ljava/lang/String;
    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 142
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    .line 97
    return-void

    .line 95
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    return-object v0
.end method


# virtual methods
.method public checkUserProfile()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3282
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getImsProxyAddrForMobile()Ljava/lang/String;

    move-result-object v0

    .line 3283
    .local v0, "imsProxyAddrForMobile":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3286
    :cond_0
    return v2

    .line 3283
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3284
    const/4 v1, 0x1

    return v1
.end method

.method public dump()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 165
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->copyRcsSettingsToMap(Ljava/util/Map;)V

    .line 166
    return-object v0
.end method

.method public getAutoConfigMode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3058
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3064
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "Autoconfig"

    .line 3060
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3062
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCapabilityExpiryTimeout()I
    .locals 2

    .prologue
    const/16 v0, 0xe10

    .line 2269
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2275
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "CapabilityExpiryTimeout"

    .line 2271
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2273
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCapabilityPollingPeriod()I
    .locals 2

    .prologue
    const/16 v0, 0xe10

    .line 2285
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2291
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "CapabilityPollingPeriod"

    .line 2287
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2289
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCapabilityRefreshTimeout()I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 2251
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2258
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "CapabilityRefreshTimeout"

    .line 2253
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2256
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getChatIdleDuration()I
    .locals 2

    .prologue
    const/16 v0, 0x78

    .line 1618
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1624
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "ChatIdleDuration"

    .line 1620
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1622
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1400
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1403
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "CountryCode"

    .line 1401
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getCountryIsoCode()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1413
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1416
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "CountryIsoCode"

    .line 1414
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getCurrentMsisdn()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, ""

    .line 3139
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3142
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current msisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 3143
    return-object v0

    :cond_0
    const-string/jumbo v1, "current_msisdn"

    .line 3140
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultMsrpPort()I
    .locals 2

    .prologue
    const/16 v0, 0x4e20

    .line 1922
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1928
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "DefaultMsrpPort"

    .line 1924
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1926
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getDefaultRtpPort()I
    .locals 2

    .prologue
    const/16 v0, 0x2710

    .line 1938
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1944
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "DefaultRtpPort"

    .line 1940
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1942
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getEndUserConfirmationRequestUri()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1363
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1366
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "EndUserConfReqUri"

    .line 1364
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getFileResizeOption()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 495
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 498
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "FileResizeOptions"

    .line 496
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getFileRootDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3391
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3392
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3395
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "DirectoryPathFiles"

    .line 3393
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFtHttpLogin()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1267
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1270
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "FtHttpServerLogin"

    .line 1268
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getFtHttpPassword()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1291
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1294
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "FtHttpServerPassword"

    .line 1292
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getFtHttpServer()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1243
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1246
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "FtHttpServerAddr"

    .line 1244
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getFtProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1315
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1318
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "FtProtocol"

    .line 1316
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getGsmaRelease()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3674
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3680
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "GsmaRelease"

    .line 3676
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3678
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getImConferenceUri()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1339
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1342
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ImConferenceUri"

    .line 1340
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getImSessionStartMode()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1774
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1780
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "ImSessionStart"

    .line 1776
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1778
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getImsAuhtenticationProcedureForMobile()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2050
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2053
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ImsAuhtenticationProcedureForMobile"

    .line 2051
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getImsAuhtenticationProcedureForWifi()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2063
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2066
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ImsAuhtenticationProcedureForWifi"

    .line 2064
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getImsProxyAddrForMobile()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1056
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1059
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ImsOutboundProxyAddrForMobile"

    .line 1057
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getImsProxyAddrForWifi()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1107
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1110
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ImsOutboundProxyAddrForWifi"

    .line 1108
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getImsProxyPortForMobile()I
    .locals 2

    .prologue
    const/16 v0, 0x13c6

    .line 1080
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1086
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "ImsOutboundProxyPortForMobile"

    .line 1082
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1084
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getImsProxyPortForWifi()I
    .locals 2

    .prologue
    const/16 v0, 0x13c6

    .line 1131
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1137
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "ImsOutboundProxyPortForWifi"

    .line 1133
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1135
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getIsComposingTimeout()I
    .locals 2

    .prologue
    const/16 v0, 0xf

    .line 2134
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2140
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "IsComposingTimeout"

    .line 2136
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxChatLogEntriesPerContact()I
    .locals 1

    .prologue
    const/16 v0, 0x1f4

    .line 1789
    return v0
.end method

.method public getMaxChatMessageLength()I
    .locals 2

    .prologue
    const/16 v0, 0x64

    .line 1586
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1592
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "MaxChatMessageLength"

    .line 1588
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1590
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxChatParticipants()I
    .locals 2

    .prologue
    const/16 v0, 0xa

    .line 1570
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1576
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "MaxChatParticipants"

    .line 1572
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1574
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxChatSessions()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1698
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1704
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "MaxChatSessions"

    .line 1700
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1702
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxFileTransferSessions()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1714
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1721
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "MaxFileTransferSessions"

    .line 1716
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1719
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxFileTransferSize()I
    .locals 2

    .prologue
    const/16 v0, 0x800

    .line 1634
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1640
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "MaxFileTransferSize"

    .line 1636
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1638
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxGroupChatMessageLength()I
    .locals 2

    .prologue
    const/16 v0, 0x64

    .line 1602
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1608
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "MaxGroupChatMessageLength"

    .line 1604
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1606
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxIPCallLogEntriesPerContact()I
    .locals 1

    .prologue
    const/16 v0, 0xc8

    .line 1807
    return v0
.end method

.method public getMaxIPCallSessions()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1731
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1736
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "MaxIpCallSessions"

    .line 1733
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1734
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxImageSharingSize()I
    .locals 2

    .prologue
    const/16 v0, 0x800

    .line 1666
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1672
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "MaxImageShareSize"

    .line 1668
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1670
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxPhotoIconSize()I
    .locals 2

    .prologue
    const/16 v0, 0x100

    .line 1538
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1544
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "MaxPhotoIconSize"

    .line 1540
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1542
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxRichcallLogEntriesPerContact()I
    .locals 1

    .prologue
    const/16 v0, 0xc8

    .line 1798
    return v0
.end method

.method public getMessagingUX()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 3509
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3515
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "ConvergentMessagingUx"

    .line 3511
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3513
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMinBatteryLevel()I
    .locals 2

    .prologue
    const/4 v0, 0x4

    .line 858
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 864
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "MinBatteryLevel"

    .line 860
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 862
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMsgCapValidityPeriod()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3625
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3631
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "msgCapValidity"

    .line 3627
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3629
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMsgDeliveryTimeout()I
    .locals 2

    .prologue
    const/16 v0, 0x12c

    .line 3641
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3647
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "deliveryTimeout"

    .line 3643
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3645
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMsrpTransactionTimeout()I
    .locals 2

    .prologue
    const/16 v0, 0x1e

    .line 1954
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1960
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "MsrpTransactionTimeout"

    .line 1956
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1958
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMyCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .locals 6

    .prologue
    .line 1470
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;-><init>()V

    .line 1473
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isCsVideoSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setCsVideoSupport(Z)V

    .line 1474
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferSupport(Z)V

    .line 1475
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferHttpSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferHttpSupport(Z)V

    .line 1476
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImageSharingSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImageSharingSupport(Z)V

    .line 1477
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImSessionSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImSessionSupport(Z)V

    .line 1478
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isPresenceDiscoverySupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setPresenceDiscoverySupport(Z)V

    .line 1479
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSocialPresenceSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSocialPresenceSupport(Z)V

    .line 1480
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isVideoSharingSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setVideoSharingSupport(Z)V

    .line 1481
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGeoLocationPushSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setGeolocationPushSupport(Z)V

    .line 1482
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferThumbnailSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferThumbnailSupport(Z)V

    .line 1483
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferStoreForwardSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferStoreForwardSupport(Z)V

    .line 1484
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isIPVoiceCallSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setIPVoiceCallSupport(Z)V

    .line 1485
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isIPVideoCallSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setIPVideoCallSupport(Z)V

    .line 1486
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGroupChatStoreForwardSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setGroupChatStoreForwardSupport(Z)V

    .line 1487
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSipAutomata()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSipAutomata(Z)V

    .line 1488
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isCallComposerSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setCallComposerSupport(Z)V

    .line 1489
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSharedMapSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSharedMapSupport(Z)V

    .line 1490
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSharedSketchSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSharedSketchSupport(Z)V

    .line 1491
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isPostCallSupported()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setPostCallSupport(Z)V

    .line 1492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setTimestamp(J)V

    .line 1495
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSupportedRcsExtensions()Ljava/lang/String;

    move-result-object v2

    .line 1496
    .local v2, "exts":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1503
    :cond_0
    return-object v0

    .line 1496
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string/jumbo v4, ","

    .line 1497
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "ext":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1498
    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 1499
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->addSupportedExtension(Ljava/lang/String;)V

    .line 1498
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getNetworkAccess()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2712
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2718
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "NetworkAccess"

    .line 2714
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2716
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getNetworkApn()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2816
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2819
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "RcsApn"

    .line 2817
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2830
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2833
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "RcsOperator"

    .line 2831
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPhoneContext()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3469
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3472
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "PhoneContext"

    .line 3470
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPhotoRootDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3343
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3344
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3347
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "DirectoryPathPhotos"

    .line 3345
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrevProvVersion()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "0"

    .line 3246
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3249
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "PrevProvVersion"

    .line 3247
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProvisioningAddress()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, ""

    .line 3270
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3273
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "ProvisioningAddress"

    .line 3271
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProvisioningExpirationDate()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    .line 3202
    .local v0, "expiration":J
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v2, :cond_0

    :goto_0
    const-wide/16 v2, 0x0

    .line 3209
    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 3210
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    :cond_0
    :try_start_0
    const-string/jumbo v2, "ProvValidityExpiration"

    .line 3204
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 3209
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 3212
    :cond_2
    return-object v4

    .line 3207
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getProvisioningToken()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, ""

    .line 3165
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3168
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " provisioning token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 3169
    return-object v0

    :cond_0
    const-string/jumbo v1, "ProvisioningToken"

    .line 3166
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProvisioningValidity()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "0"

    .line 3221
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3224
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "Validity"

    .line 3222
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProvisioningVersion()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "0"

    .line 3088
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3091
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "ProvisioningVersion"

    .line 3089
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPublishExpirePeriod()I
    .locals 2

    .prologue
    const/16 v0, 0xe10

    .line 2018
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2024
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "PublishExpirePeriod"

    .line 2020
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2022
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRcsStates(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string/jumbo v1, "RCS"

    const/4 v2, 0x0

    .line 3113
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ProvisioningVersion"

    const-string/jumbo v2, "0"

    .line 3115
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRegisterExpirePeriod()I
    .locals 2

    .prologue
    const v0, 0x927c0

    .line 1970
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1976
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "RegisterExpirePeriod"

    .line 1972
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1974
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRegisterRetryBaseTime()I
    .locals 2

    .prologue
    const/16 v0, 0x1e

    .line 1986
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1992
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "RegisterRetryBaseTime"

    .line 1988
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1990
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRegisterRetryMaxTime()I
    .locals 2

    .prologue
    const/16 v0, 0x708

    .line 2002
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2008
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "RegisterRetryMaxTime"

    .line 2004
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2006
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRingingPeriod()I
    .locals 2

    .prologue
    const/16 v0, 0x78

    .line 2102
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2108
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "RingingPeriod"

    .line 2104
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2106
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getServerAssignedUUID()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1387
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1390
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "uuid_Value"

    .line 1388
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSessionRefreshExpirePeriod()I
    .locals 2

    .prologue
    const/16 v0, 0xe10

    .line 2150
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2157
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "SessionRefreshExpirePeriod"

    .line 2152
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2155
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSipDefaultProtocolForMobile()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1854
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1857
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "SipDefaultProtocolForMobile"

    .line 1855
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSipDefaultProtocolForWifi()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "TCP"

    .line 1867
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1870
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "SipDefaultProtocolForWifi"

    .line 1868
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSipKeepAlivePeriod()I
    .locals 2

    .prologue
    const/16 v0, 0x78

    .line 2800
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2806
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "SipKeepAlivePeriod"

    .line 2802
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2804
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSipListeningPort()I
    .locals 4

    .prologue
    const/16 v0, 0x13c6

    .line 1835
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1841
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1844
    :goto_1
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "SipListeningPort"

    .line 1837
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1842
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sip listening port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 1839
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSipTimerT1()I
    .locals 2

    .prologue
    const/16 v0, 0x7d0

    .line 2728
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2734
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "SipTimerT1"

    .line 2730
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2732
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSipTimerT2()I
    .locals 2

    .prologue
    const/16 v0, 0x3e80

    .line 2744
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2750
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "SipTimerT2"

    .line 2746
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2748
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSipTimerT4()I
    .locals 2

    .prologue
    const/16 v0, 0x4268

    .line 2760
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2766
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "SipTimerT4"

    .line 2762
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2764
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSipTraceFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sip.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2221
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2227
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "SipTraceFile"

    .line 2223
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2225
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSipTransactionTimeout()I
    .locals 2

    .prologue
    const/16 v0, 0x1e

    .line 1906
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1912
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "SipTransactionTimeout"

    .line 1908
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1910
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSubscribeExpirePeriod()I
    .locals 2

    .prologue
    const/16 v0, 0x5460

    .line 2118
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2124
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "SubscribeExpirePeriod"

    .line 2120
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2122
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSupportedRcsExtensions()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2605
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 2608
    return-object v1

    :cond_0
    const-string/jumbo v0, "CapabilityRcsExtensions"

    .line 2606
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedRcsExternalServices()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2629
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 2632
    return-object v1

    :cond_0
    const-string/jumbo v0, "CapabilityRcsExternalServices"

    .line 2630
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTlsCertificateIntermediate()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1893
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1896
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "TlsCertificateIntermediate"

    .line 1894
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getTlsCertificateRoot()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1880
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1883
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "TlsCertificateRoot"

    .line 1881
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getTraceLevel()I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 2193
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2198
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "TraceLevel"

    .line 2195
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2196
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getUserProfileImsDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 936
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 939
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ImsDisplayName"

    .line 937
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getUserProfileImsDomain()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1032
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1035
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ImsHomeDomain"

    .line 1033
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getUserProfileImsPassword()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 984
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 987
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ImsPassword"

    .line 985
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getUserProfileImsPrivateId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 960
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 963
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ImsPrivateId"

    .line 961
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getUserProfileImsRealm()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1008
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1011
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ImsRealm"

    .line 1009
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getUserProfileImsUserName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 912
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 915
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ImsUsername"

    .line 913
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getVideoRootDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3367
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3368
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3371
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "DirectoryPathVideos"

    .line 3369
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWarningMaxFileTransferSize()I
    .locals 2

    .prologue
    const/16 v0, 0x800

    .line 1650
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1656
    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "WarnFileTransferSize"

    .line 1652
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1654
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getXdmLogin()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1195
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1198
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "XdmServerLogin"

    .line 1196
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getXdmPassword()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1219
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1222
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "XdmServerPassword"

    .line 1220
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getXdmServer()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1171
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 1174
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "XdmServerAddr"

    .line 1172
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public isCallComposerSupported()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2466
    const/4 v0, 0x0

    .line 2467
    .local v0, "result":Z
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v2, :cond_1

    .line 2471
    .end local v0    # "result":Z
    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v1

    .restart local v0    # "result":Z
    :cond_1
    const-string/jumbo v2, "CapabilityCallComposer"

    .line 2468
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .end local v0    # "result":Z
    :cond_2
    const-string/jumbo v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    .line 2471
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isExternalServiceSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isChatAutoAccepted()Z
    .locals 2

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 362
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "AutoAcceptChat"

    .line 360
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isConfigValid()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 328
    .local v0, "result":I
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    const-string/jumbo v1, "isConfigValid"

    .line 330
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 331
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Configuration validity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isCpuAlwaysOn()Z
    .locals 2

    .prologue
    .line 2855
    const/4 v0, 0x0

    .line 2856
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2859
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "CpuAlwaysOn"

    .line 2857
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isCsVideoSupported()Z
    .locals 2

    .prologue
    .line 2300
    const/4 v0, 0x0

    .line 2301
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2304
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "CapabilityCsVideo"

    .line 2302
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isExternalServiceSupported(Ljava/lang/String;)Z
    .locals 6
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2652
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSupportedRcsExternalServices()Ljava/lang/String;

    move-result-object v2

    .line 2653
    .local v2, "exts":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, ","

    .line 2656
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "ext":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2657
    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_1

    .line 2663
    return v5

    .line 2654
    .end local v1    # "ext":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    return v5

    .line 2658
    .restart local v1    # "ext":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_1
    aget-object v0, v1, v3

    .line 2659
    .local v0, "capability":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2657
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2660
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public isFileTransferAutoAccept()Z
    .locals 2

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 375
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "FileTransferAutoAccept"

    .line 373
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isFileTransferAutoAcceptEnabled()Z
    .locals 2

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 425
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "IsAutAcceptFt"

    .line 423
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isFileTransferAutoAcceptInRoaming()Z
    .locals 2

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 400
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "FileTransferAutoAcceptInRoaming"

    .line 397
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isFileTransferHttpSupported()Z
    .locals 2

    .prologue
    .line 2326
    const/4 v0, 0x0

    .line 2327
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_1

    .line 2334
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .line 2328
    .restart local v0    # "result":Z
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtHttpServer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtHttpServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtHttpLogin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtHttpLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtHttpPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFtHttpPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "CapabilityFileTransferHttp"

    .line 2331
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isFileTransferStoreForwardSupported()Z
    .locals 2

    .prologue
    .line 2552
    const/4 v0, 0x0

    .line 2553
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2556
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "CapabilityFileTransferSF"

    .line 2554
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isFileTransferSupported()Z
    .locals 2

    .prologue
    .line 2313
    const/4 v0, 0x0

    .line 2314
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2317
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "CapabilityFileTransfer"

    .line 2315
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isFileTransferThumbnailSupported()Z
    .locals 2

    .prologue
    .line 2538
    const/4 v0, 0x0

    .line 2539
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2543
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "CapabilityFileTransferThumbnail"

    .line 2540
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isFtAlwaysOn()Z
    .locals 2

    .prologue
    .line 2685
    const/4 v0, 0x0

    .line 2686
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2689
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "FtAlwaysOn"

    .line 2687
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isFtHttpCapAlwaysOn()Z
    .locals 2

    .prologue
    .line 3535
    const/4 v0, 0x0

    .line 3536
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3542
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    :try_start_0
    const-string/jumbo v1, "ftHTTPCapAlwaysOn"

    .line 3538
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 3540
    .local v0, "result":Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isGeoLocationPushSupported()Z
    .locals 2

    .prologue
    .line 2452
    const/4 v0, 0x0

    .line 2453
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2457
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "CapabilityGeoLocationPush"

    .line 2454
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isGroupChatActivated()Z
    .locals 3

    .prologue
    .line 3326
    const/4 v0, 0x0

    .line 3327
    .local v0, "result":Z
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v2, :cond_1

    .line 3334
    :cond_0
    :goto_0
    return v0

    .line 3328
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getImConferenceUri()Ljava/lang/String;

    move-result-object v1

    .line 3329
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "sip:foo@bar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3331
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isGroupChatAutoAccept()Z
    .locals 2

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 449
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "GroupChatAutoAccept"

    .line 447
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isGroupChatStoreForwardSupported()Z
    .locals 2

    .prologue
    .line 2591
    const/4 v0, 0x0

    .line 2592
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2595
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "CapabilityGroupChatSF"

    .line 2593
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isGruuSupported()Z
    .locals 2

    .prologue
    .line 2842
    const/4 v0, 0x1

    .line 2843
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2846
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "GRUU"

    .line 2844
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isGsmaExtToExtSupported()Z
    .locals 2

    .prologue
    .line 3879
    const/4 v0, 0x0

    .line 3880
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3884
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "AllowRcsExtensions"

    .line 3881
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isIPVideoCallSupported()Z
    .locals 2

    .prologue
    .line 2578
    const/4 v0, 0x0

    .line 2579
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2582
    .end local v0    # "result":Z
    :goto_0
    const/4 v1, 0x0

    return v1

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "CapabilityIPVideoCall"

    .line 2580
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isIPVoiceCallSupported()Z
    .locals 2

    .prologue
    .line 2565
    const/4 v0, 0x0

    .line 2566
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2569
    .end local v0    # "result":Z
    :goto_0
    const/4 v1, 0x0

    return v1

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "CapabilityIPVoiceCall"

    .line 2567
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isImAlwaysOn()Z
    .locals 2

    .prologue
    .line 2672
    const/4 v0, 0x0

    .line 2673
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2676
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "ImAlwaysOn"

    .line 2674
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isImReportsActivated()Z
    .locals 2

    .prologue
    .line 2698
    const/4 v0, 0x0

    .line 2699
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2702
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "ImUseReports"

    .line 2700
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isImSessionSupported()Z
    .locals 2

    .prologue
    .line 2343
    const/4 v0, 0x0

    .line 2344
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2347
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "CapabilityImSession"

    .line 2345
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isImageSharingSupported()Z
    .locals 2

    .prologue
    .line 2369
    const/4 v0, 0x0

    .line 2370
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2373
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "CapabilityImageShare"

    .line 2371
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isMediaTraceActivated()Z
    .locals 2

    .prologue
    .line 2236
    const/4 v0, 0x0

    .line 2237
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2240
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "MediaTraceActivated"

    .line 2238
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isNatUriFormatUsed()Z
    .locals 2

    .prologue
    .line 2088
    const/4 v0, 0x0

    .line 2089
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2092
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "NatUriFormat"

    .line 2090
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isOwnerLoggedIn()Z
    .locals 4

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 304
    .end local v0    # "result":Z
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    :goto_1
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "OwnerLoggedState"

    .line 302
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 305
    .end local v0    # "result":Z
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Owner logged in state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isPermanentStateModeActivated()Z
    .locals 2

    .prologue
    .line 2166
    const/4 v0, 0x0

    .line 2167
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2170
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "PermanentState"

    .line 2168
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isPostCallSupported()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2508
    const/4 v0, 0x0

    .line 2509
    .local v0, "result":Z
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v2, :cond_1

    .line 2513
    .end local v0    # "result":Z
    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v1

    .restart local v0    # "result":Z
    :cond_1
    const-string/jumbo v2, "CapabilityPostCall"

    .line 2510
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .end local v0    # "result":Z
    :cond_2
    const-string/jumbo v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    .line 2513
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isExternalServiceSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isPresenceDiscoverySupported()Z
    .locals 2

    .prologue
    .line 2422
    const/4 v0, 0x0

    .line 2423
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_1

    .line 2428
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .line 2424
    .restart local v0    # "result":Z
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getXdmServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "CapabilityPresenceDiscovery"

    .line 2425
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isRcseEnabled()Z
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 280
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "rcseEnabled"

    .line 278
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isRcseProvisioned()Z
    .locals 2

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 256
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "RcseProvisioned"

    .line 254
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isReadNotification()Z
    .locals 2

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 473
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "ReadNotification"

    .line 471
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isRemoveAccount()Z
    .locals 2

    .prologue
    .line 3573
    const/4 v0, 0x0

    .line 3574
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3577
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "RemoveAccount"

    .line 3575
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isSecureMsrpOverMobile()Z
    .locals 2

    .prologue
    .line 3441
    const/4 v0, 0x0

    .line 3442
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3445
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "SecureMsrpOverMobile"

    .line 3443
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isSecureMsrpOverWifi()Z
    .locals 2

    .prologue
    .line 3415
    const/4 v0, 0x0

    .line 3416
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3419
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "SecureMsrpOverWifi"

    .line 3417
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isServiceActivated()Z
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 232
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "ServiceActivated"

    .line 230
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isSharedMapSupported()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2480
    const/4 v0, 0x0

    .line 2481
    .local v0, "result":Z
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v2, :cond_1

    .line 2485
    .end local v0    # "result":Z
    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v1

    .restart local v0    # "result":Z
    :cond_1
    const-string/jumbo v2, "CapabilitySharedMap"

    .line 2482
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .end local v0    # "result":Z
    :cond_2
    const-string/jumbo v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    .line 2485
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isExternalServiceSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isSharedSketchSupported()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2494
    const/4 v0, 0x0

    .line 2495
    .local v0, "result":Z
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v2, :cond_1

    .line 2499
    .end local v0    # "result":Z
    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v1

    .restart local v0    # "result":Z
    :cond_1
    const-string/jumbo v2, "CapabilitySharedSketch"

    .line 2496
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .end local v0    # "result":Z
    :cond_2
    const-string/jumbo v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    .line 2499
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isExternalServiceSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isSipAutomata()Z
    .locals 2

    .prologue
    .line 3611
    const/4 v0, 0x0

    .line 3612
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 3615
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "CapabilitySipAutomata"

    .line 3613
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isSipKeepAliveEnabled()Z
    .locals 2

    .prologue
    .line 2775
    const/4 v0, 0x1

    .line 2776
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2779
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "SipKeepAlive"

    .line 2777
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isSipTraceActivated()Z
    .locals 2

    .prologue
    .line 2207
    const/4 v0, 0x0

    .line 2208
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2211
    .end local v0    # "result":Z
    :goto_0
    const/4 v1, 0x1

    return v1

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "SipTraceActivated"

    .line 2209
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isSocialPresenceSupported()Z
    .locals 2

    .prologue
    .line 2437
    const/4 v0, 0x0

    .line 2438
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_1

    .line 2443
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .line 2439
    .restart local v0    # "result":Z
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getXdmServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "CapabilitySocialPresence"

    .line 2440
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isTelUriFormatUsed()Z
    .locals 2

    .prologue
    .line 2075
    const/4 v0, 0x0

    .line 2076
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2079
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "TelUriFormat"

    .line 2077
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isTraceActivated()Z
    .locals 2

    .prologue
    .line 2179
    const/4 v0, 0x0

    .line 2180
    .local v0, "result":Z
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_0

    .line 2183
    .end local v0    # "result":Z
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "TraceActivated"

    .line 2181
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public isVideoSharingSupported()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2383
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkUtils;->getNetworkAccessType()I

    move-result v0

    .line 2384
    .local v0, "networkAccessType":I
    sget v2, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_3G:I

    if-lt v0, v2, :cond_1

    .line 2387
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v2, :cond_2

    .line 2398
    :cond_0
    :goto_0
    return v3

    .line 2385
    :cond_1
    return v3

    :cond_2
    const-string/jumbo v2, "CapabilityVideoShare"

    .line 2388
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "vsAuth":Ljava/lang/String;
    const-string/jumbo v2, "1"

    .line 2389
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "18"

    .line 2391
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2392
    sget v2, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_WIFI:I

    if-ne v2, v0, :cond_5

    .line 2394
    :cond_3
    return v4

    .line 2390
    :cond_4
    return v4

    .line 2392
    :cond_5
    sget v2, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_4G:I

    if-eq v2, v0, :cond_3

    goto :goto_0
.end method

.method public isVsSupportedForRegistration()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2407
    sget-object v1, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v1, :cond_1

    .line 2413
    :cond_0
    return v2

    :cond_1
    const-string/jumbo v1, "CapabilityVideoShare"

    .line 2408
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "vsAuth":Ljava/lang/String;
    const-string/jumbo v1, "0"

    .line 2409
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2410
    const/4 v1, 0x1

    return v1
.end method

.method public readParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 176
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->mSettingsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 181
    .local v7, "result":Ljava/lang/String;
    if-nez v7, :cond_1

    const/4 v6, 0x0

    .line 187
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->databaseUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 189
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 196
    :goto_0
    if-nez v6, :cond_5

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->mSettingsCache:Ljava/util/Map;

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-object v7

    .line 177
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "result":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 182
    .restart local v7    # "result":Ljava/lang/String;
    :cond_1
    return-object v7

    .line 196
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-nez v6, :cond_3

    .line 197
    :goto_2
    return-object v7

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    .line 193
    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 197
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 196
    if-nez v6, :cond_6

    .line 197
    :goto_3
    throw v0

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public reloadRcsSettingsCache()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings$1;-><init>(Lcom/sonymobile/rcs/provider/settings/RcsSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    return-void
.end method

.method public resetConfigParameters()V
    .locals 4

    .prologue
    .line 2887
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "RemoveAccount"

    .line 2890
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ServiceActivated"

    .line 2891
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "PresenceInvitationRingtone"

    const-string/jumbo v2, ""

    .line 2892
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "PresenceInvitationVibrate"

    .line 2893
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CShInvitationRingtone"

    const-string/jumbo v2, ""

    .line 2894
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CShInvitationVibrate"

    .line 2895
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CShAvailableBeep"

    .line 2896
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "FileTransferInvitationRingtone"

    const-string/jumbo v2, ""

    .line 2897
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "FileTransferInvitationVibrate"

    .line 2898
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ChatInvitationRingtone"

    const-string/jumbo v2, ""

    .line 2899
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ChatInvitationVibrate"

    .line 2900
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Freetext1"

    const v2, 0x7f050035

    .line 2901
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Freetext2"

    const v2, 0x7f050036

    .line 2903
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Freetext3"

    const v2, 0x7f050037

    .line 2905
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Freetext4"

    const v2, 0x7f050038

    .line 2907
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MaxPhotoIconSize"

    const-string/jumbo v2, "256"

    .line 2911
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MaxFreetextLength"

    const-string/jumbo v2, "100"

    .line 2912
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MaxChatParticipants"

    const-string/jumbo v2, "10"

    .line 2913
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MaxChatMessageLength"

    const-string/jumbo v2, "100"

    .line 2914
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MaxGroupChatMessageLength"

    const-string/jumbo v2, "100"

    .line 2915
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ChatIdleDuration"

    const-string/jumbo v2, "300"

    .line 2916
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MaxFileTransferSize"

    const-string/jumbo v2, "0"

    .line 2917
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "WarnFileTransferSize"

    const-string/jumbo v2, "0"

    .line 2918
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MaxImageShareSize"

    const-string/jumbo v2, "0"

    .line 2919
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MaxVideoShareDuration"

    const-string/jumbo v2, "54000"

    .line 2920
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MaxChatSessions"

    const-string/jumbo v2, "10"

    .line 2921
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MaxFileTransferSessions"

    const-string/jumbo v2, "0"

    .line 2922
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SmsFallbackService"

    .line 2923
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "StoreForwardServiceWarning"

    .line 2924
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilityCallComposer"

    .line 2925
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilitySharedMap"

    .line 2926
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilitySharedSketch"

    .line 2927
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilityPostCall"

    .line 2928
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilityRcsExternalServices"

    const-string/jumbo v2, ""

    .line 2929
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImsUsername"

    const-string/jumbo v2, ""

    .line 2932
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImsDisplayName"

    const-string/jumbo v2, ""

    .line 2933
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImsPrivateId"

    const-string/jumbo v2, ""

    .line 2934
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImsPassword"

    const-string/jumbo v2, ""

    .line 2935
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImsHomeDomain"

    const-string/jumbo v2, ""

    .line 2936
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImsOutboundProxyAddrForMobile"

    const-string/jumbo v2, ""

    .line 2937
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImsOutboundProxyPortForMobile"

    const-string/jumbo v2, "5062"

    .line 2938
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImsOutboundProxyAddrForWifi"

    const-string/jumbo v2, ""

    .line 2939
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImsOutboundProxyPortForWifi"

    const-string/jumbo v2, "5062"

    .line 2940
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "XdmServerAddr"

    const-string/jumbo v2, "10.194.117.34:8080/services"

    .line 2941
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "XdmServerLogin"

    const-string/jumbo v2, ""

    .line 2942
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "XdmServerPassword"

    const-string/jumbo v2, "password"

    .line 2943
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImConferenceUri"

    const-string/jumbo v2, ""

    .line 2944
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilityCsVideo"

    .line 2945
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilityImageShare"

    .line 2946
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilityVideoShare"

    const-string/jumbo v2, "1"

    .line 2947
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilityImSession"

    .line 2948
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilityFileTransfer"

    .line 2949
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilityPresenceDiscovery"

    .line 2950
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilitySocialPresence"

    .line 2951
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilityRcsExtensions"

    const-string/jumbo v2, ""

    .line 2952
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImsServicePollingPeriod"

    const-string/jumbo v2, "300"

    .line 2955
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SipListeningPort"

    const-string/jumbo v2, "5062"

    .line 2956
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SipDefaultProtocolForMobile"

    const-string/jumbo v2, "UDP"

    .line 2957
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SipDefaultProtocolForWifi"

    const-string/jumbo v2, "TCP"

    .line 2958
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "TlsCertificateRoot"

    const-string/jumbo v2, ""

    .line 2959
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "TlsCertificateIntermediate"

    const-string/jumbo v2, ""

    .line 2960
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SipTransactionTimeout"

    const-string/jumbo v2, "30"

    .line 2961
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DefaultMsrpPort"

    const-string/jumbo v2, "20000"

    .line 2962
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DefaultRtpPort"

    const-string/jumbo v2, "10000"

    .line 2963
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MsrpTransactionTimeout"

    const-string/jumbo v2, "30"

    .line 2964
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "RegisterExpirePeriod"

    const-string/jumbo v2, "600000"

    .line 2965
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "PublishExpirePeriod"

    const-string/jumbo v2, "3600"

    .line 2966
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "RevokeTimeout"

    const-string/jumbo v2, "300"

    .line 2967
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImsAuhtenticationProcedureForMobile"

    const-string/jumbo v2, "GIBA"

    .line 2968
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImsAuhtenticationProcedureForWifi"

    const-string/jumbo v2, "DIGEST"

    .line 2969
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "TelUriFormat"

    .line 2970
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "NatUriFormat"

    .line 2971
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "RingingPeriod"

    const-string/jumbo v2, "60"

    .line 2972
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SubscribeExpirePeriod"

    const-string/jumbo v2, "21600"

    .line 2973
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "IsComposingTimeout"

    const-string/jumbo v2, "15"

    .line 2974
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    const-string/jumbo v2, "SessionRefreshExpirePeriod"

    const-string/jumbo v3, "3600"

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "PermanentState"

    .line 2977
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "TraceActivated"

    .line 2978
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "TraceLevel"

    const-string/jumbo v2, "DEBUG"

    .line 2979
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SipTraceActivated"

    .line 2980
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MediaTraceActivated"

    .line 2981
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilityRefreshTimeout"

    const-string/jumbo v2, "3"

    .line 2982
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    const-string/jumbo v2, "CapabilityExpiryTimeout"

    const-string/jumbo v3, "86400"

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CapabilityPollingPeriod"

    const-string/jumbo v2, "3600"

    .line 2985
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImAlwaysOn"

    .line 2986
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ImUseReports"

    .line 2987
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "NetworkAccess"

    const-string/jumbo v2, "-1"

    .line 2988
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SipTimerT1"

    const-string/jumbo v2, "2000"

    .line 2989
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SipTimerT2"

    const-string/jumbo v2, "16000"

    .line 2990
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SipTimerT4"

    const-string/jumbo v2, "17000"

    .line 2991
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SipKeepAlive"

    .line 2992
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SipKeepAlivePeriod"

    const-string/jumbo v2, "120"

    .line 2993
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "RcsApn"

    const-string/jumbo v2, ""

    .line 2994
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "RcsOperator"

    const-string/jumbo v2, ""

    .line 2995
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Validity"

    const-string/jumbo v2, "0"

    .line 2996
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ProvValidityExpiration"

    const-string/jumbo v2, "0"

    .line 2997
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Autoconfig"

    const-string/jumbo v2, "1"

    .line 2998
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ProvisioningVersion"

    const-string/jumbo v2, "0"

    .line 2999
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "FileTransferAutoAccept"

    .line 3000
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "FileTransferAutoAcceptInRoaming"

    .line 3001
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GroupChatAutoAccept"

    .line 3004
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ReadNotification"

    .line 3005
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "FileResizeOptions"

    const/4 v2, 0x1

    .line 3006
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SaveContentShared"

    .line 3008
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "IsAutAcceptFt"

    .line 3009
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "RcseProvisioned"

    .line 3010
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "PhoneContext"

    const-string/jumbo v2, ""

    .line 3011
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "PrevProvVersion"

    const-string/jumbo v2, "0"

    .line 3012
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "isConfigValid"

    const-string/jumbo v2, "0"

    .line 3013
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "isEUCRAccepted"

    const-string/jumbo v2, "-1"

    .line 3014
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "current_msisdn"

    const-string/jumbo v2, ""

    .line 3015
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ProvisioningToken"

    const-string/jumbo v2, ""

    .line 3016
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "TokenValidity"

    const-string/jumbo v2, "0"

    .line 3017
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ConvergentMessagingUx"

    const-string/jumbo v2, "-1"

    .line 3018
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "rcseEnabled"

    .line 3020
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "defaultMessagingMethod"

    const/4 v2, 0x0

    .line 3021
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "OwnerLoggedState"

    .line 3023
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ExtensionsMaxMSRPSize"

    const-string/jumbo v2, "0"

    .line 3024
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "AllowRcsExtensions"

    .line 3025
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    return-void
.end method

.method public restoreSettings(Ljava/util/TreeMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3034
    .local p1, "restoredSettings":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 3035
    .local v2, "restoredSettingsSet":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3036
    .local v1, "rcsSettinglist":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3049
    return-void

    .line 3037
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3038
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3044
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ProvisioningVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3045
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3040
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setConfigValidityStatus(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 347
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "isConfigValid"

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCountryAreaCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 1459
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 1462
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "CountryAreaCode"

    .line 1460
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 1425
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 1428
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "CountryCode"

    .line 1426
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCountryIsoCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 1436
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 1439
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "CountryIsoCode"

    .line 1437
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCurrentMsisdn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;

    .prologue
    .line 3152
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 3156
    :goto_0
    return-void

    .line 3153
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set current msisdn as : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    const-string/jumbo v0, "current_msisdn"

    .line 3154
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEUCRStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 2875
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 2878
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "isEUCRAccepted"

    .line 2876
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnableFileTransferAutoAccept(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 434
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 437
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "IsAutAcceptFt"

    .line 435
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFileResizeOption(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 507
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "FileResizeOptions"

    .line 508
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFileTransferAutoAccept(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 384
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "FileTransferAutoAccept"

    .line 385
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFileTransferAutoAcceptInRoaming(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 409
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "FileTransferAutoAcceptInRoaming"

    .line 410
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGroupChatAutoAccept(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 458
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 461
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GroupChatAutoAccept"

    .line 459
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGsmaRelease(Ljava/lang/String;)V
    .locals 1
    .param p1, "gsmaRelease"    # Ljava/lang/String;

    .prologue
    .line 3819
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 3822
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GsmaRelease"

    .line 3820
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMessagingUX(I)V
    .locals 3
    .param p1, "uxType"    # I

    .prologue
    .line 3524
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 3527
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ConvergentMessagingUx"

    .line 3525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPhoneContext(Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneContext"    # Ljava/lang/String;

    .prologue
    .line 3481
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 3484
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PhoneContext"

    .line 3482
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPrevProvVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "prev_version"    # Ljava/lang/String;

    .prologue
    .line 3234
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 3237
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PrevProvVersion"

    .line 3235
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProvisioningExpiration(J)V
    .locals 7
    .param p1, "validity"    # J

    .prologue
    .line 3189
    sget-object v2, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v2, :cond_0

    .line 3193
    :goto_0
    return-void

    .line 3190
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    add-long v0, v2, v4

    .local v0, "next":J
    const-string/jumbo v2, "ProvValidityExpiration"

    .line 3191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProvisioningTermsAccepted(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 3258
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 3261
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ProvisioningTermsAccepted"

    .line 3259
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProvisioningToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 3178
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 3182
    :goto_0
    return-void

    .line 3179
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting provisioning token as : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    const-string/jumbo v0, "ProvisioningToken"

    .line 3180
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProvisioningVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 3100
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 3104
    :goto_0
    return-void

    .line 3101
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getProvisioningVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setPrevProvVersion(Ljava/lang/String;)V

    const-string/jumbo v0, "ProvisioningVersion"

    .line 3102
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRcsStates(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v2, "RCS"

    const/4 v3, 0x0

    .line 3125
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3127
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "ProvisioningVersion"

    .line 3128
    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3130
    return-void
.end method

.method public setRcseEnabled(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 289
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "rcseEnabled"

    .line 290
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRcseProvisioningState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 265
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "RcseProvisioned"

    .line 266
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setReadNotification(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 482
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ReadNotification"

    .line 483
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRemoveAccountState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 3582
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 3585
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "RemoveAccount"

    .line 3583
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setServiceActivationState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 241
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceActivated"

    .line 242
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSipKeepAliveEnabled(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 2788
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 2791
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SipKeepAlive"

    .line 2789
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSupportedRcsExtensions(Ljava/lang/String;)V
    .locals 1
    .param p1, "extensions"    # Ljava/lang/String;

    .prologue
    .line 2617
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 2620
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "CapabilityRcsExtensions"

    .line 2618
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSupportedRcsExternalServices(Ljava/lang/String;)V
    .locals 1
    .param p1, "services"    # Ljava/lang/String;

    .prologue
    .line 2641
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 2644
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "CapabilityRcsExternalServices"

    .line 2642
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserProfileImsDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 948
    sget-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->instance:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    if-nez v0, :cond_0

    .line 951
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ImsDisplayName"

    .line 949
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 211
    if-nez p1, :cond_1

    .line 212
    :cond_0
    return-void

    .line 211
    :cond_1
    if-eqz p2, :cond_0

    .line 215
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    .line 216
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->databaseUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->mSettingsCache:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method
