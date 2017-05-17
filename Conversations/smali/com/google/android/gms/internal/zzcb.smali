.class public Lcom/google/android/gms/internal/zzcb;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzpV:Ljava/lang/Object;

.field private final zzxA:Ljava/util/Map;
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

.field private zzxD:Lcom/google/android/gms/internal/zzcb;

.field zzxi:Z

.field private final zzxz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzxz:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzxA:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzpV:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcb;->zzxi:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzxA:Ljava/util/Map;

    const-string/jumbo v1, "action"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzxA:Ljava/util/Map;

    const-string/jumbo v1, "ad_format"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs zza(Lcom/google/android/gms/internal/zzbz;J[Ljava/lang/String;)Z
    .locals 6

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcb;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    array-length v2, p4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_0
    aget-object v3, p4, v0

    new-instance v4, Lcom/google/android/gms/internal/zzbz;

    invoke-direct {v4, p2, p3, v3, p1}, Lcom/google/android/gms/internal/zzbz;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzbz;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcb;->zzxz:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs zza(Lcom/google/android/gms/internal/zzbz;[Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcb;->zzxi:Z

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbG()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzcb;->zza(Lcom/google/android/gms/internal/zzbz;J[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public zzb(J)Lcom/google/android/gms/internal/zzbz;
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcb;->zzxi:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbz;

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/zzbz;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzbz;)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method public zzc(Lcom/google/android/gms/internal/zzcb;)V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcb;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcb;->zzxD:Lcom/google/android/gms/internal/zzcb;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcb;->zzxi:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzih;->zzhb()Lcom/google/android/gms/internal/zzbv;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcb;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbv;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/zzby;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcb;->zzxA:Ljava/util/Map;

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/internal/zzby;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdB()Lcom/google/android/gms/internal/zzbz;
    .locals 2

    .prologue
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbG()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzcb;->zzb(J)Lcom/google/android/gms/internal/zzbz;

    move-result-object v0

    return-object v0
.end method
