.class public Lcom/google/android/gms/analytics/internal/zzai;
.super Lcom/google/android/gms/analytics/internal/zzd;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/internal/zzai$1;,
        Lcom/google/android/gms/analytics/internal/zzai$zza;
    }
.end annotation


# instance fields
.field private zzTh:Landroid/content/SharedPreferences;

.field private zzTi:J

.field private zzTj:J

.field private final zzTk:Lcom/google/android/gms/analytics/internal/zzai$zza;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 7

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTj:J

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzai$zza;

    const-string/jumbo v3, "monitoring"

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkX()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/analytics/internal/zzai$zza;-><init>(Lcom/google/android/gms/analytics/internal/zzai;Ljava/lang/String;JLcom/google/android/gms/analytics/internal/zzai$1;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTk:Lcom/google/android/gms/analytics/internal/zzai$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTh:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public zzbp(Ljava/lang/String;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjv()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTh:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "installation_campaign"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "installation_campaign"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Failed to commit campaign data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzbg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected zziJ()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.analytics.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTh:Landroid/content/SharedPreferences;

    return-void
.end method

.method public zzlF()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjv()V

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTi:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTh:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "first_run"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTi:J

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTi:J

    return-wide v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTh:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "first_run"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Failed to commit first run time"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/internal/zzai;->zzbg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzlG()Lcom/google/android/gms/analytics/internal/zzaj;
    .locals 4

    .prologue
    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzlF()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzaj;-><init>(Lcom/google/android/gms/internal/zzmq;J)V

    return-object v0
.end method

.method public zzlH()J
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjv()V

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTj:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTh:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "last_dispatch"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTj:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTj:J

    return-wide v0
.end method

.method public zzlI()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjv()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTh:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "last_dispatch"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTj:J

    return-void
.end method

.method public zzlJ()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjv()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTh:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "installation_campaign"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public zzlK()Lcom/google/android/gms/analytics/internal/zzai$zza;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->zzTk:Lcom/google/android/gms/analytics/internal/zzai$zza;

    return-object v0
.end method
