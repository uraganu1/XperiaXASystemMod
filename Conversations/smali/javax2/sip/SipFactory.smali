.class public Ljavax2/sip/SipFactory;
.super Ljava/lang/Object;
.source "SipFactory.java"


# static fields
.field private static sSipFactory:Ljavax2/sip/SipFactory;


# instance fields
.field private mNameSipStackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax2/sip/SipStack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Ljavax2/sip/SipFactory;->sSipFactory:Ljavax2/sip/SipFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax2/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance()Ljavax2/sip/SipFactory;
    .locals 2

    .prologue
    const-class v1, Ljavax2/sip/SipFactory;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Ljavax2/sip/SipFactory;->sSipFactory:Ljavax2/sip/SipFactory;

    if-eqz v0, :cond_0

    .line 21
    :goto_0
    sget-object v0, Ljavax2/sip/SipFactory;->sSipFactory:Ljavax2/sip/SipFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :cond_0
    :try_start_1
    new-instance v0, Ljavax2/sip/SipFactory;

    invoke-direct {v0}, Ljavax2/sip/SipFactory;-><init>()V

    sput-object v0, Ljavax2/sip/SipFactory;->sSipFactory:Ljavax2/sip/SipFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createAddressFactory()Ljavax2/sip/address/AddressFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    new-instance v1, Lgov2/nist/javax2/sip/address/AddressFactoryImpl;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/address/AddressFactoryImpl;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljavax2/sip/PeerUnavailableException;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Ljavax2/sip/PeerUnavailableException;

    const-string/jumbo v2, "Failed to create AddressFactory"

    invoke-direct {v1, v2, v0}, Ljavax2/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :cond_0
    check-cast v0, Ljavax2/sip/PeerUnavailableException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0
.end method

.method public createHeaderFactory()Ljavax2/sip/header/HeaderFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    new-instance v1, Lgov2/nist/javax2/sip/header/HeaderFactoryImpl;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/HeaderFactoryImpl;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljavax2/sip/PeerUnavailableException;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljavax2/sip/PeerUnavailableException;

    const-string/jumbo v2, "Failed to create HeaderFactory"

    invoke-direct {v1, v2, v0}, Ljavax2/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :cond_0
    check-cast v0, Ljavax2/sip/PeerUnavailableException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0
.end method

.method public createMessageFactory()Ljavax2/sip/message/MessageFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    new-instance v1, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljavax2/sip/PeerUnavailableException;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Ljavax2/sip/PeerUnavailableException;

    const-string/jumbo v2, "Failed to create MessageFactory"

    invoke-direct {v1, v2, v0}, Ljavax2/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 93
    :cond_0
    check-cast v0, Ljavax2/sip/PeerUnavailableException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0
.end method

.method public declared-synchronized createSipStack(Ljava/util/Properties;)Ljavax2/sip/SipStack;
    .locals 8
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string/jumbo v4, "javax2.sip.IP_ADDRESS"

    .line 38
    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 46
    :cond_0
    iget-object v4, p0, Ljavax2/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax2/sip/SipStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .local v3, "sipStack":Ljavax2/sip/SipStack;
    if-eqz v3, :cond_2

    :goto_0
    monitor-exit p0

    .line 61
    return-object v3

    .end local v3    # "sipStack":Ljavax2/sip/SipStack;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "javax2.sip.STACK_NAME"

    .line 40
    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    new-instance v4, Ljavax2/sip/PeerUnavailableException;

    const-string/jumbo v5, "javax2.sip.STACK_NAME property not found"

    invoke-direct {v4, v5}, Ljavax2/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 48
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "sipStack":Ljavax2/sip/SipStack;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gov2.nist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Ljavax2/sip/SipStack;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Impl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 50
    .local v1, "implClassName":Ljava/lang/String;
    :try_start_3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljavax2/sip/SipStack;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/util/Properties;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "sipStack":Ljavax2/sip/SipStack;
    check-cast v3, Ljavax2/sip/SipStack;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    .restart local v3    # "sipStack":Ljavax2/sip/SipStack;
    :try_start_4
    iget-object v4, p0, Ljavax2/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    .end local v3    # "sipStack":Ljavax2/sip/SipStack;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljavax2/sip/PeerUnavailableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to initiate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljavax2/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized resetFactory()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Ljavax2/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 32
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
