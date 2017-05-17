.class public final Lcom/google/android/gms/analytics/GoogleAnalytics;
.super Lcom/google/android/gms/analytics/zza;
.source "Unknown"


# static fields
.field private static zzPe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzPf:Z

.field private zzPg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/analytics/GoogleAnalytics$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzPi:Z

.field private volatile zzPj:Z

.field private zzPk:Z

.field private zzqA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPe:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 1
    .param p1, "context"    # Lcom/google/android/gms/analytics/internal/zzf;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPg:Ljava/util/Set;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/zzf;->zzaa(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzjz()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public static zziF()V
    .locals 3

    const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPe:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPe:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private zziH()Lcom/google/android/gms/analytics/internal/zzb;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzix()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zziH()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method private zziI()Lcom/google/android/gms/analytics/internal/zzan;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzix()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zziI()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppOptOut()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPj:Z

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "getClientId can not be called from the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcE(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzix()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzjC()Lcom/google/android/gms/analytics/internal/zzn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzn;->zzkk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogger()Lcom/google/android/gms/analytics/Logger;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    return-object v0
.end method

.method public isDryRunEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPi:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzqA:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPf:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .locals 3
    .param p1, "trackingId"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzix()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/analytics/Tracker;-><init>(Lcom/google/android/gms/analytics/internal/zzf;Ljava/lang/String;Lcom/google/android/gms/analytics/internal/zzad;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker;->zza()V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppOptOut(Z)V
    .locals 1
    .param p1, "optOut"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPj:Z

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPj:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zziH()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzb;->zzjc()V

    goto :goto_0
.end method

.method public setDryRun(Z)V
    .locals 0
    .param p1, "dryRun"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPi:Z

    return-void
.end method

.method public setLocalDispatchPeriod(I)V
    .locals 1
    .param p1, "dispatchPeriodInSeconds"    # I

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zziH()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/zzb;->setLocalDispatchPeriod(I)V

    return-void
.end method

.method public setLogger(Lcom/google/android/gms/analytics/Logger;)V
    .locals 3
    .param p1, "logger"    # Lcom/google/android/gms/analytics/Logger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/zzae;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPk:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRL:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/google/android/gms/analytics/internal/zzy;->zzRL:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " DEBUG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzPk:Z

    goto :goto_0
.end method

.method public zza()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zziE()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzqA:Z

    return-void
.end method

.method zziE()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zziI()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzlj()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzln()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzlj()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->getLogLevel()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzlo()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->getLogLevel()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    goto :goto_2
.end method
