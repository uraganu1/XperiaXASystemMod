.class public Lcom/google/android/gms/analytics/internal/zzi;
.super Lcom/google/android/gms/analytics/internal/zzd;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/internal/zzi$zza;
    }
.end annotation


# instance fields
.field private final zzQH:Lcom/google/android/gms/analytics/internal/zzi$zza;

.field private zzQI:Lcom/google/android/gms/analytics/internal/zzac;

.field private final zzQJ:Lcom/google/android/gms/analytics/internal/zzt;

.field private zzQK:Lcom/google/android/gms/analytics/internal/zzaj;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 2

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzf;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaj;-><init>(Lcom/google/android/gms/internal/zzmq;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQK:Lcom/google/android/gms/analytics/internal/zzaj;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzi$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/zzi$zza;-><init>(Lcom/google/android/gms/analytics/internal/zzi;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQH:Lcom/google/android/gms/analytics/internal/zzi$zza;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzi$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/zzi$1;-><init>(Lcom/google/android/gms/analytics/internal/zzi;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQJ:Lcom/google/android/gms/analytics/internal/zzt;

    return-void
.end method

.method private onDisconnect()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zziH()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzb;->zzjf()V

    return-void
.end method

.method private onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjk()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQI:Lcom/google/android/gms/analytics/internal/zzac;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQI:Lcom/google/android/gms/analytics/internal/zzac;

    const-string/jumbo v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->onDisconnect()V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzi;)Lcom/google/android/gms/analytics/internal/zzi$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQH:Lcom/google/android/gms/analytics/internal/zzi$zza;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/analytics/internal/zzac;)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjk()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQI:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjI()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zziH()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzb;->onServiceConnected()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzi;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzi;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzi;Lcom/google/android/gms/analytics/internal/zzac;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Lcom/google/android/gms/analytics/internal/zzac;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/internal/zzi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjJ()V

    return-void
.end method

.method private zzjI()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQK:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->start()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQJ:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzkM()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzt;->zzt(J)V

    return-void
.end method

.method private zzjJ()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzbd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->disconnect()V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjv()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQI:Lcom/google/android/gms/analytics/internal/zzac;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQH:Lcom/google/android/gms/analytics/internal/zzi$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzjK()Lcom/google/android/gms/analytics/internal/zzac;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQI:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjI()V

    return v1
.end method

.method public disconnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjv()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzrP()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQH:Lcom/google/android/gms/analytics/internal/zzi$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQI:Lcom/google/android/gms/analytics/internal/zzac;

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iput-object v3, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQI:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->onDisconnect()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjv()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQI:Lcom/google/android/gms/analytics/internal/zzac;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjv()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQI:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzlt()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzkG()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzn()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzlr()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/zzac;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjI()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzkF()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzbd(Ljava/lang/String;)V

    return v6
.end method

.method protected zziJ()V
    .locals 0

    .prologue
    return-void
.end method

.method public zzjH()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjv()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzQI:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/analytics/internal/zzac;->zzjc()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjI()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Failed to clear hits from AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzbd(Ljava/lang/String;)V

    return v1
.end method
