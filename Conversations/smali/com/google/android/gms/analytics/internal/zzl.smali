.class Lcom/google/android/gms/analytics/internal/zzl;
.super Lcom/google/android/gms/analytics/internal/zzd;
.source "Unknown"


# instance fields
.field private mStarted:Z

.field private final zzQY:Lcom/google/android/gms/analytics/internal/zzj;

.field private final zzQZ:Lcom/google/android/gms/analytics/internal/zzah;

.field private final zzRa:Lcom/google/android/gms/analytics/internal/zzag;

.field private final zzRb:Lcom/google/android/gms/analytics/internal/zzi;

.field private zzRc:J

.field private final zzRd:Lcom/google/android/gms/analytics/internal/zzt;

.field private final zzRe:Lcom/google/android/gms/analytics/internal/zzt;

.field private final zzRf:Lcom/google/android/gms/analytics/internal/zzaj;

.field private zzRg:J

.field private zzRh:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzg;)V
    .locals 2

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRc:J

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzk(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRa:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzm(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzn(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQZ:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzo(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRb:Lcom/google/android/gms/analytics/internal/zzi;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaj;-><init>(Lcom/google/android/gms/internal/zzmq;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRf:Lcom/google/android/gms/analytics/internal/zzaj;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/zzl$1;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRd:Lcom/google/android/gms/analytics/internal/zzt;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/zzl$2;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRe:Lcom/google/android/gms/analytics/internal/zzt;

    return-void
.end method

.method private zza(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzpr;)V
    .locals 8

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzji()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzjE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->zzaS(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzjF()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->enableAdvertisingIdCollection(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zza;->zziy()Lcom/google/android/gms/measurement/zzc;

    move-result-object v5

    const-class v0, Lcom/google/android/gms/internal/zzke;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/zzc;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzke;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzke;->zzaX(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzke;->zzI(Z)V

    invoke-virtual {v5, p2}, Lcom/google/android/gms/measurement/zzc;->zzb(Lcom/google/android/gms/measurement/zze;)V

    const-class v1, Lcom/google/android/gms/internal/zzkd;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/measurement/zzc;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzkd;

    const-class v2, Lcom/google/android/gms/internal/zzpq;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/zzc;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzpq;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzn()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v0, "Sending installation campaign to"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzjE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjq()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzlF()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/measurement/zzc;->zzM(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/zzc;->zzAy()V

    return-void

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v7, "an"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "av"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "aid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "aiid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "uid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/zzkd;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzpq;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzpq;->setAppVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzpq;->setAppId(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzpq;->setAppInstallerId(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzke;->setUserId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjV()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/internal/zzl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjW()V

    return-void
.end method

.method private zzbk(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zzjT()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzji()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzY(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzZ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzY(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingService;->zzZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzbg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbg(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private zzjV()V
    .locals 1

    .prologue
    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/zzl$4;-><init>(Lcom/google/android/gms/analytics/internal/zzl;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Lcom/google/android/gms/analytics/internal/zzw;)V

    return-void
.end method

.method private zzjW()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzjN()I

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkb()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRe:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzkT()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzt;->zzt(J)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private zzkc()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRh:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->zzkr()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzki()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    move v2, v0

    :goto_0
    if-nez v2, :cond_4

    :goto_1
    return v0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->zzks()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private zzkd()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjp()Lcom/google/android/gms/analytics/internal/zzv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzv;->zzlb()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzv;->zzbw()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjO()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzr;->zzkB()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkA()J

    move-result-wide v2

    const-string/jumbo v0, "Dispatch alarm scheduled (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzv;->zzlc()V

    goto :goto_0
.end method

.method private zzke()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkd()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzki()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjq()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzlH()J

    move-result-wide v0

    cmp-long v3, v0, v8

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v0, v4, v0

    cmp-long v3, v0, v8

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    :goto_0
    const-string/jumbo v2, "Dispatch scheduled (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRd:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzt;->zzbw()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRd:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzt;->zzt(J)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzky()J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzky()J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRd:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzt;->zzkY()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRd:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzt;->zzu(J)V

    goto :goto_1
.end method

.method private zzkf()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkg()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkh()V

    return-void
.end method

.method private zzkg()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRd:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->zzbw()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRd:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->cancel()V

    return-void

    :cond_0
    const-string/jumbo v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzkh()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjp()Lcom/google/android/gms/analytics/internal/zzv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->zzbw()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method protected onServiceConnected()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkr()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjY()V

    goto :goto_0
.end method

.method start()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    iget-boolean v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->mStarted:Z

    if-eqz v2, :cond_0

    :goto_0
    const-string/jumbo v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->mStarted:Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkr()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjo()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzl$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzl$3;-><init>(Lcom/google/android/gms/analytics/internal/zzl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzg;->zzf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjT()V

    goto :goto_1
.end method

.method public zzJ(Z)V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkb()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzh;Z)J
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjk()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->beginTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzjD()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/analytics/internal/zzj;->zza(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzjD()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzjE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/google/android/gms/analytics/internal/zzj;->zza(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/internal/zzh;->zzn(J)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zzb(Lcom/google/android/gms/analytics/internal/zzh;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-wide v2

    :cond_0
    :try_start_2
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzh;->zzn(J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "Failed to update Analytics property"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    return-wide v6

    :catch_1
    move-exception v0

    const-string/jumbo v1, "Failed to end transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "Failed to end transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    throw v0

    :catch_3
    move-exception v1

    const-string/jumbo v2, "Failed to end transaction"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzab;)V
    .locals 3

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRh:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzf(Lcom/google/android/gms/analytics/internal/zzab;)Lcom/google/android/gms/analytics/internal/zzab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjX()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRb:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkr()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzj;->zzc(Lcom/google/android/gms/analytics/internal/zzab;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkb()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbe(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbe(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjm()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v2, "Service unavailable on package side"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjm()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v2, "deliver: failed to insert hit to database"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzw;J)V
    .locals 6

    .prologue
    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjq()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zzlH()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_0
    const-string/jumbo v2, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkr()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjZ()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjq()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzlI()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkb()V

    if-nez p1, :cond_4

    :goto_1
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRg:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRa:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->zzlA()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjX()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjo()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/analytics/internal/zzl$5;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzw;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzg;->zzf(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjq()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzai;->zzlI()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkb()V

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/google/android/gms/analytics/internal/zzw;->zzc(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1, v0}, Lcom/google/android/gms/analytics/internal/zzw;->zzc(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public zzb(Lcom/google/android/gms/analytics/internal/zzw;)V
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRg:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzw;J)V

    return-void
.end method

.method public zzbl(Ljava/lang/String;)V
    .locals 4

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjj()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjm()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/internal/zzam;->zza(Lcom/google/android/gms/analytics/internal/zzaf;Ljava/lang/String;)Lcom/google/android/gms/internal/zzpr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjq()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzlJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjq()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/zzai;->zzbp(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjq()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzlG()Lcom/google/android/gms/analytics/internal/zzaj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->zzkW()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzaj;->zzv(J)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "Received installation campaign"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->zzr(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_0
    const-string/jumbo v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string/jumbo v0, "Ignoring duplicate install campaign"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbg(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo v1, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string/jumbo v0, "Campaign received too late, ignoring"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzh;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzpr;)V

    goto :goto_0
.end method

.method protected zzc(Lcom/google/android/gms/analytics/internal/zzh;)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjk()V

    const-string/jumbo v0, "Sending first hit to property"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzjE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjq()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzlG()Lcom/google/android/gms/analytics/internal/zzaj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzkW()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzaj;->zzv(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjq()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzlJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjm()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/analytics/internal/zzam;->zza(Lcom/google/android/gms/analytics/internal/zzaf;Ljava/lang/String;)Lcom/google/android/gms/internal/zzpr;

    move-result-object v0

    const-string/jumbo v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzpr;)V

    return-void

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method zzf(Lcom/google/android/gms/analytics/internal/zzab;)Lcom/google/android/gms/analytics/internal/zzab;
    .locals 3

    .prologue
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzlv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjq()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzlK()Lcom/google/android/gms/analytics/internal/zzai$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlN()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzn()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string/jumbo v2, "_m"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzab;->zza(Lcom/google/android/gms/analytics/internal/zzc;Lcom/google/android/gms/analytics/internal/zzab;Ljava/util/Map;)Lcom/google/android/gms/analytics/internal/zzab;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1

    :cond_1
    return-object p1
.end method

.method protected zziJ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQZ:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzah;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRb:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zza()V

    return-void
.end method

.method public zzjO()J
    .locals 2

    .prologue
    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzjO()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected zzjU()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjq()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzlF()J

    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const-string/jumbo v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzZ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkr()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbg(Ljava/lang/String;)V

    :goto_2
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRh:Z

    if-eqz v0, :cond_5

    :cond_0
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkb()V

    return-void

    :cond_1
    const-string/jumbo v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbh(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkj()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbh(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkj()V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "Device AnalyticsService not registered! Hits will not be delivered reliably."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbh(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkr()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjX()V

    goto :goto_3
.end method

.method protected zzjX()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRh:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkt()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRb:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkO()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRf:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzaj;->zzv(J)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRf:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->start()V

    const-string/jumbo v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRb:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->connect()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Connected to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRf:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->clear()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->onServiceConnected()V

    goto :goto_0
.end method

.method public zzjY()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjj()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkt()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRb:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzkC()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->zzp(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRb:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzlq()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/internal/zzj;->zzq(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    return-void

    :cond_1
    const-string/jumbo v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbg(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "Service not connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    return-void

    :cond_3
    return-void

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkb()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkb()V

    return-void
.end method

.method protected zzjZ()Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    const-string/jumbo v0, "Dispatching a batch of local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRb:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQZ:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzah;->zzlB()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    if-nez v0, :cond_6

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkC()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzkD()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    move-wide v4, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->beginTransaction()V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/analytics/internal/zzj;->zzp(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "Hits loaded from store. count"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v0, v8}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRb:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQZ:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzlB()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_2
    move-wide v0, v4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_c

    :try_start_3
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_9

    move-wide v4, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkr()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_6
    if-eqz v1, :cond_2

    const-string/jumbo v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    return v2

    :cond_7
    :try_start_4
    const-string/jumbo v0, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    return v2

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "Failed to read hits from persisted store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2

    return v2

    :catch_2
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    return v2

    :cond_8
    :try_start_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzlq()J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-nez v0, :cond_3

    const-string/jumbo v0, "Database contains successfully uploaded hit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_3

    return v2

    :catch_3
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    return v2

    :cond_9
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkr()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "Service connected, sending hits to the service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    iget-object v8, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRb:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzlq()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v8, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v8, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v8, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzlq()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/analytics/internal/zzj;->zzq(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzlq()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v0

    :try_start_c
    const-string/jumbo v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5

    return v2

    :catch_5
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    return v2

    :cond_a
    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQZ:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzah;->zzq(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {v1, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/analytics/internal/zzj;->zzo(Ljava/util/List;)V

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    :catch_6
    move-exception v0

    :try_start_10
    const-string/jumbo v1, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_7

    return v2

    :cond_b
    :try_start_12
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-wide v4

    goto :goto_4

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    return v2

    :cond_c
    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_8

    return v2

    :catch_8
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    return v2

    :catch_9
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    return v2

    :catchall_0
    move-exception v0

    :try_start_14
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_a

    throw v0

    :catch_a
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    return v2
.end method

.method public zzjc()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkr()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjX()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRb:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzjH()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "Delete all hits from local store"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzjL()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzjM()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkb()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to delete hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Device service unavailable. Can\'t clear hits stored on the device service."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public zzjf()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    const-string/jumbo v0, "Service disconnected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzbd(Ljava/lang/String;)V

    return-void
.end method

.method zzjh()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRg:J

    return-void
.end method

.method public zzkb()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzji()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzQY:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzSs:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkd()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRa:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRa:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkf()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRa:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->zzly()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRa:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->isConnected()Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzke()V

    goto :goto_1
.end method

.method public zzki()J
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRc:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRc:J

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkz()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziI()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzan;->zzll()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziI()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzmc()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public zzkj()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjk()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRh:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRb:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkb()V

    return-void
.end method

.method public zzs(J)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzjv()V

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzRc:J

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzkb()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
