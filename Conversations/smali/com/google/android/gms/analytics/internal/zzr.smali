.class public Lcom/google/android/gms/analytics/internal/zzr;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private final zzOK:Lcom/google/android/gms/analytics/internal/zzf;

.field private zzRA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzRy:Ljava/lang/Boolean;

.field private zzRz:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzOK:Lcom/google/android/gms/analytics/internal/zzf;

    return-void
.end method


# virtual methods
.method public zzkA()J
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRV:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkB()J
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRW:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkC()I
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRX:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkD()I
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRY:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkE()J
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSl:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public zzkF()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSa:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzkG()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRZ:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzkH()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSb:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzkI()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSc:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzkJ()Lcom/google/android/gms/analytics/internal/zzm;
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSe:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzm;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method public zzkK()Lcom/google/android/gms/analytics/internal/zzo;
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSf:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzo;->zzbn(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public zzkL()Ljava/util/Set;
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

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSk:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRA:Ljava/util/Set;

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

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRz:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRA:Ljava/util/Set;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRA:Ljava/util/Set;

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRz:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRz:Ljava/lang/String;

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

.method public zzkM()J
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSt:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkN()J
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSu:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkO()J
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSx:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkP()I
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRO:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkQ()I
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRQ:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkR()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "google_analytics_v4.db"

    return-object v0
.end method

.method public zzkS()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "google_analytics2_v4.db"

    return-object v0
.end method

.method public zzkT()J
    .locals 2

    .prologue
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public zzkU()I
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSn:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkV()I
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSo:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkW()J
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSp:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkX()J
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSy:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkr()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/google/android/gms/common/internal/zzd;->zzakE:Z

    return v0
.end method

.method public zzks()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRy:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRy:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzOK:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzOK:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zznf;->zzi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRy:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    :cond_3
    const-string/jumbo v0, "com.google.android.gms.analytics"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRy:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRy:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzOK:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzjm()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzbh(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_5
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRy:Ljava/lang/Boolean;

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzRy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public zzkt()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRK:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public zzku()I
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSd:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkv()I
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSh:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkw()I
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSi:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkx()I
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSj:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzky()J
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRS:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkz()J
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzRR:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
