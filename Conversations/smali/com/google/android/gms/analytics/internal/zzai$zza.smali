.class public final Lcom/google/android/gms/analytics/internal/zzai$zza;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zza"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final zzTl:J

.field final synthetic zzTm:Lcom/google/android/gms/analytics/internal/zzai;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/internal/zzai;Ljava/lang/String;J)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTm:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzac(Z)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTl:J

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/internal/zzai;Ljava/lang/String;JLcom/google/android/gms/analytics/internal/zzai$1;)V
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/analytics/internal/zzai$zza;-><init>(Lcom/google/android/gms/analytics/internal/zzai;Ljava/lang/String;J)V

    return-void
.end method

.method private zzlL()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTm:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTm:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlQ()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlR()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlP()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private zzlM()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlO()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    return-wide v4

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTm:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private zzlO()J
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTm:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlP()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private zzlP()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzlQ()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zzbq(Ljava/lang/String;)V
    .locals 12

    .prologue
    const-wide v8, 0x7fffffffffffffffL

    const-wide/16 v10, 0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlO()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlL()V

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTm:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlQ()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTm:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlR()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlQ()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v2, v8

    add-long v6, v4, v10

    const-wide v8, 0x7fffffffffffffffL

    div-long v6, v8, v6

    cmp-long v2, v2, v6

    if-ltz v2, :cond_4

    move v2, v0

    :goto_2
    if-nez v2, :cond_5

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTm:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-nez v0, :cond_6

    :goto_4
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlQ()Ljava/lang/String;

    move-result-object v0

    add-long v2, v4, v10

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit p0

    return-void

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlR()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public zzlN()Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlM()J

    move-result-wide v4

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTl:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    return-object v8

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTl:J

    const-wide/16 v6, 0x2

    mul-long/2addr v2, v6

    cmp-long v2, v4, v2

    if-gtz v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlL()V

    return-object v8

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTm:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlR()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzTm:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v3}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlQ()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzlL()V

    if-nez v2, :cond_5

    :cond_4
    return-object v8

    :cond_5
    cmp-long v3, v4, v10

    if-lez v3, :cond_6

    :goto_2
    if-eqz v0, :cond_4

    new-instance v0, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method protected zzlR()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
