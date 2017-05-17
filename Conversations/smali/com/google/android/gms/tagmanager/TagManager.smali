.class public Lcom/google/android/gms/tagmanager/TagManager;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/TagManager$4;,
        Lcom/google/android/gms/tagmanager/TagManager$zza;
    }
.end annotation


# static fields
.field private static zzblm:Lcom/google/android/gms/tagmanager/TagManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbhN:Lcom/google/android/gms/tagmanager/DataLayer;

.field private final zzbkh:Lcom/google/android/gms/tagmanager/zzs;

.field private final zzblj:Lcom/google/android/gms/tagmanager/TagManager$zza;

.field private final zzblk:Lcom/google/android/gms/tagmanager/zzct;

.field private final zzbll:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/google/android/gms/tagmanager/zzo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$zza;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzct;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerHolderLoaderProvider"    # Lcom/google/android/gms/tagmanager/TagManager$zza;
    .param p3, "dataLayer"    # Lcom/google/android/gms/tagmanager/DataLayer;
    .param p4, "serviceManager"    # Lcom/google/android/gms/tagmanager/zzct;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzblk:Lcom/google/android/gms/tagmanager/zzct;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzblj:Lcom/google/android/gms/tagmanager/TagManager$zza;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbll:Ljava/util/concurrent/ConcurrentMap;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbhN:Lcom/google/android/gms/tagmanager/DataLayer;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbhN:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v1, Lcom/google/android/gms/tagmanager/TagManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/TagManager$1;-><init>(Lcom/google/android/gms/tagmanager/TagManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Lcom/google/android/gms/tagmanager/DataLayer$zzb;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbhN:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzd;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/tagmanager/zzd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Lcom/google/android/gms/tagmanager/DataLayer$zzb;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbkh:Lcom/google/android/gms/tagmanager/zzs;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/TagManager;->zzHt()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    .prologue
    const-class v1, Lcom/google/android/gms/tagmanager/TagManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager;->zzblm:Lcom/google/android/gms/tagmanager/TagManager;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager;->zzblm:Lcom/google/android/gms/tagmanager/TagManager;

    monitor-exit v1

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/google/android/gms/tagmanager/TagManager$2;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/TagManager$2;-><init>()V

    new-instance v2, Lcom/google/android/gms/tagmanager/zzw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/zzw;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gms/tagmanager/TagManager;

    new-instance v4, Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-direct {v4, v2}, Lcom/google/android/gms/tagmanager/DataLayer;-><init>(Lcom/google/android/gms/tagmanager/DataLayer$zzc;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcu;->zzHo()Lcom/google/android/gms/tagmanager/zzcu;

    move-result-object v2

    invoke-direct {v3, p0, v0, v4, v2}, Lcom/google/android/gms/tagmanager/TagManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$zza;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzct;)V

    sput-object v3, Lcom/google/android/gms/tagmanager/TagManager;->zzblm:Lcom/google/android/gms/tagmanager/TagManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "TagManager.getInstance requires non-null context."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method private zzHt()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/tagmanager/TagManager$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/TagManager$3;-><init>(Lcom/google/android/gms/tagmanager/TagManager;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/TagManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/TagManager;->zzgp(Ljava/lang/String;)V

    return-void
.end method

.method private zzgp(Ljava/lang/String;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbll:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzo;->zzfR(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatch()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzblk:Lcom/google/android/gms/tagmanager/zzct;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzct;->dispatch()V

    return-void
.end method

.method public getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbhN:Lcom/google/android/gms/tagmanager/DataLayer;

    return-object v0
.end method

.method public loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p1, "containerId"    # Ljava/lang/String;
    .param p2, "defaultContainerResourceId"    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzblj:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbkh:Lcom/google/android/gms/tagmanager/zzs;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzs;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzGi()V

    return-object v0
.end method

.method public setVerboseLoggingEnabled(Z)V
    .locals 1
    .param p1, "enableVerboseLogging"    # Z

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x5

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->setLogLevel(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzo;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbll:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/tagmanager/zzo;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbll:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method declared-synchronized zzp(Landroid/net/Uri;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcb;->zzGU()Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tagmanager/zzcb;->zzp(Landroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzcb;->getContainerId()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager$4;->zzblo:[I

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzcb;->zzGV()Lcom/google/android/gms/tagmanager/zzcb$zza;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzcb$zza;->ordinal()I

    move-result v3

    aget v0, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbll:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->getContainerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/tagmanager/zzo;->zzfT(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->refresh()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbll:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->getContainerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->zzGd()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/tagmanager/zzo;->zzfT(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->refresh()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzcb;->zzGW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/tagmanager/zzo;->zzfT(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->refresh()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
