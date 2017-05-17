.class public Lcom/google/android/gms/internal/zzih;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzJA:Z

.field private zzJz:Z

.field private final zzLA:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private zzLB:Ljava/lang/Boolean;

.field private zzLC:Z

.field private zzLD:Z

.field private final zzLq:Ljava/lang/String;

.field private final zzLr:Lcom/google/android/gms/internal/zzii;

.field private zzLs:Ljava/math/BigInteger;

.field private final zzLt:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzig;",
            ">;"
        }
    .end annotation
.end field

.field private final zzLu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzik;",
            ">;"
        }
    .end annotation
.end field

.field private zzLv:Z

.field private zzLw:I

.field private zzLx:Lcom/google/android/gms/internal/zzbv;

.field private zzLy:Lcom/google/android/gms/internal/zzbf;

.field private zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzpV:Ljava/lang/Object;

.field private zzqA:Z

.field private zzsZ:Lcom/google/android/gms/internal/zzbe;

.field private zzta:Lcom/google/android/gms/internal/zzbd;

.field private final zztb:Lcom/google/android/gms/internal/zzha;

.field private zzzN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzir;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLs:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLt:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLu:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzih;->zzLv:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzih;->zzJz:Z

    iput v2, p0, Lcom/google/android/gms/internal/zzih;->zzLw:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzih;->zzqA:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzLx:Lcom/google/android/gms/internal/zzbv;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzih;->zzJA:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzsZ:Lcom/google/android/gms/internal/zzbe;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzLy:Lcom/google/android/gms/internal/zzbf;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzta:Lcom/google/android/gms/internal/zzbd;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLA:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zztb:Lcom/google/android/gms/internal/zzha;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzLB:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzih;->zzLC:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzih;->zzLD:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzir;->zzhs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLq:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzii;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzLq:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzii;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLr:Lcom/google/android/gms/internal/zzii;

    return-void
.end method


# virtual methods
.method public zzb(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzih;->zzLB:Ljava/lang/Boolean;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Ljava/lang/Throwable;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzha;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzih;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzha;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzha;->zza(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public zzd(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzpT:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzNb:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/zze;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public zzhb()Lcom/google/android/gms/internal/zzbv;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLx:Lcom/google/android/gms/internal/zzbv;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzhe()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzzN:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzhg()Ljava/lang/Boolean;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzLB:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
