.class public Lcom/google/android/gms/analytics/internal/zzr;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private final zzNq:Lcom/google/android/gms/analytics/internal/zzf;

.field private volatile zzQe:Ljava/lang/Boolean;

.field private zzQf:Ljava/lang/String;

.field private zzQg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNq:Lcom/google/android/gms/analytics/internal/zzf;

    return-void
.end method


# virtual methods
.method public zzkA()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "google_analytics_v4.db"

    return-object v0
.end method

.method public zzkB()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "google_analytics2_v4.db"

    return-object v0
.end method

.method public zzkC()J
    .locals 2

    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public zzkD()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQT:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkE()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQU:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkF()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQV:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkG()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRe:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzka()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/common/internal/zzd;->zzaiU:Z

    return v0
.end method

.method public zzkb()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQe:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQe:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQe:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNq:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNq:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzny;->zzj(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQe:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    :cond_3
    const-string/jumbo v0, "com.google.android.gms.analytics"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQe:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQe:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNq:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zziU()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzbe(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_5
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQe:Ljava/lang/Boolean;

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQe:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQe:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public zzkc()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQq:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public zzkd()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQJ:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzke()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQN:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkf()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQO:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkg()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQP:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkh()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQy:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzki()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQx:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkj()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQB:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkk()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQC:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkl()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQD:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkm()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQE:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkn()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQR:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public zzko()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQG:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzkp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQF:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzkq()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQH:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzkr()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQI:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzks()Lcom/google/android/gms/analytics/internal/zzm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQK:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzm;->zzbj(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method public zzkt()Lcom/google/android/gms/analytics/internal/zzo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQL:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzo;->zzbk(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public zzku()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQQ:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQg:Ljava/util/Set;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v4, v2

    :goto_0
    if-lt v1, v4, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQf:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQg:Ljava/util/Set;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQg:Ljava/util/Set;

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQf:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzQf:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    aget-object v5, v2, v1

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public zzkv()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQZ:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkw()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRa:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkx()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRd:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzky()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQu:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkz()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzQw:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
