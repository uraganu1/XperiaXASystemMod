.class public Lcom/google/android/gms/tagmanager/zza;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zza$zza;
    }
.end annotation


# static fields
.field private static zzbhA:Lcom/google/android/gms/tagmanager/zza;

.field private static zzbhz:Ljava/lang/Object;


# instance fields
.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final zzLM:Ljava/lang/Thread;

.field private volatile zzPW:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private volatile zzbht:J

.field private volatile zzbhu:J

.field private volatile zzbhv:J

.field private volatile zzbhw:J

.field private final zzbhx:Ljava/lang/Object;

.field private zzbhy:Lcom/google/android/gms/tagmanager/zza$zza;

.field private final zzqW:Lcom/google/android/gms/internal/zzmq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zza;->zzbhz:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/zzmt;->zzsc()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/tagmanager/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zza$zza;Lcom/google/android/gms/internal/zzmq;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zza$zza;Lcom/google/android/gms/internal/zzmq;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbht:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhu:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zza;->mClosed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhx:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/tagmanager/zza$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zza$1;-><init>(Lcom/google/android/gms/tagmanager/zza;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhy:Lcom/google/android/gms/tagmanager/zza$zza;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zza;->zzqW:Lcom/google/android/gms/internal/zzmq;

    if-nez p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zza;->mContext:Landroid/content/Context;

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzqW:Lcom/google/android/gms/internal/zzmq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhv:J

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/tagmanager/zza$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zza$2;-><init>(Lcom/google/android/gms/tagmanager/zza;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzLM:Ljava/lang/Thread;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhy:Lcom/google/android/gms/tagmanager/zza$zza;

    goto :goto_1
.end method

.method private zzFR()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzFS()V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private zzFS()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzqW:Lcom/google/android/gms/internal/zzmq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhv:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhu:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhx:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzqW:Lcom/google/android/gms/internal/zzmq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhv:J

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private zzFT()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzqW:Lcom/google/android/gms/internal/zzmq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhw:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzPW:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzFU()V
    .locals 4

    .prologue
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zza;->mClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhy:Lcom/google/android/gms/tagmanager/zza$zza;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zza$zza;->zzFV()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhx:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhx:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzbht:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaJ(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzPW:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzqW:Lcom/google/android/gms/internal/zzmq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbhw:J

    const-string/jumbo v0, "Obtained fresh AdvertisingId info from GmsCore."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaJ(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zza;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static zzaW(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zza;
    .locals 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zza;->zzbhA:Lcom/google/android/gms/tagmanager/zza;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zza;->zzbhA:Lcom/google/android/gms/tagmanager/zza;

    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zza;->zzbhz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zza;->zzbhA:Lcom/google/android/gms/tagmanager/zza;

    if-eqz v0, :cond_1

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zza;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zza;->zzbhA:Lcom/google/android/gms/tagmanager/zza;

    sget-object v0, Lcom/google/android/gms/tagmanager/zza;->zzbhA:Lcom/google/android/gms/tagmanager/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zza;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zza;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzFU()V

    return-void
.end method


# virtual methods
.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzPW:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzFS()V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzFT()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzPW:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzPW:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzFR()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public start()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzLM:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public zzFQ()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zza;->zzPW:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzFS()V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzFT()V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zza;->zzPW:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzPW:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzFR()V

    goto :goto_0
.end method
