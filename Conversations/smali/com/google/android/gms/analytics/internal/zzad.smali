.class public Lcom/google/android/gms/analytics/internal/zzad;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private final zzSP:J

.field private final zzSQ:I

.field private zzSR:D

.field private zzSS:J

.field private final zzST:Ljava/lang/Object;

.field private final zzSU:Ljava/lang/String;

.field private final zzqW:Lcom/google/android/gms/internal/zzmq;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Lcom/google/android/gms/internal/zzmq;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzST:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSQ:I

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSQ:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSR:D

    iput-wide p2, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSP:J

    iput-object p4, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSU:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzqW:Lcom/google/android/gms/internal/zzmq;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzmq;)V
    .locals 6

    .prologue
    const/16 v1, 0x3c

    const-wide/16 v2, 0x7d0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/zzad;-><init>(IJLjava/lang/String;Lcom/google/android/gms/internal/zzmq;)V

    return-void
.end method


# virtual methods
.method public zzlw()Z
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzST:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzqW:Lcom/google/android/gms/internal/zzmq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSR:D

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSQ:I

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSS:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSP:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSQ:I

    int-to-double v6, v0

    iget-wide v8, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSR:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSR:D

    :cond_0
    iput-wide v2, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSS:J

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSR:D

    cmpl-double v0, v2, v10

    if-ltz v0, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSR:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSR:D

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Excessive "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzad;->zzSU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " detected; call ignored."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzae;->zzaK(Ljava/lang/String;)V

    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
