.class Lcom/google/android/gms/analytics/Tracker$zza;
.super Lcom/google/android/gms/analytics/internal/zzd;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/analytics/GoogleAnalytics$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzOl:Lcom/google/android/gms/analytics/Tracker;

.field private zzOm:Z

.field private zzOn:I

.field private zzOo:J

.field private zzOp:Z

.field private zzOq:J


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/Tracker;Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOl:Lcom/google/android/gms/analytics/Tracker;

    invoke-direct {p0, p2}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOo:J

    return-void
.end method

.method private zziv()V
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOo:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOm:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->zzik()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOl:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zza(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzb(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->zzik()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOl:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zza(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zza(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V

    goto :goto_0
.end method


# virtual methods
.method public enableAutoActivityTracking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOm:Z

    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->zziv()V

    return-void
.end method

.method public setSessionTimeout(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOo:J

    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->zziv()V

    return-void
.end method

.method protected zzir()V
    .locals 0

    return-void
.end method

.method public declared-synchronized zziu()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOp:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method zziw()Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zznl;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOq:J

    const-wide/16 v6, 0x3e8

    iget-wide v8, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOo:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public zzn(Landroid/app/Activity;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOn:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOn:I

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOm:Z

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->zziw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOp:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "&t"

    const-string/jumbo v2, "screenview"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOl:Lcom/google/android/gms/analytics/Tracker;

    const-string/jumbo v3, "&cd"

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOl:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzk(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzal;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "&dr"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOl:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOl:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->setCampaignParamsOnNextHit(Landroid/net/Uri;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOl:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzk(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/zzal;->zzq(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/analytics/Tracker;->zzp(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "&dr"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public zzo(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOn:I

    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOn:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOn:I

    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOn:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzOq:J

    goto :goto_0
.end method
