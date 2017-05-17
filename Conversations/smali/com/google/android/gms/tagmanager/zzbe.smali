.class Lcom/google/android/gms/tagmanager/zzbe;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcd;


# instance fields
.field private final zzSP:J

.field private final zzSQ:I

.field private zzSR:D

.field private zzSS:J

.field private final zzST:Ljava/lang/Object;

.field private final zzSU:Ljava/lang/String;

.field private final zzbjt:J

.field private final zzqW:Lcom/google/android/gms/internal/zzmq;


# direct methods
.method public constructor <init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/zzmq;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzST:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSQ:I

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSQ:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSR:D

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSP:J

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzbjt:J

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSU:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzqW:Lcom/google/android/gms/internal/zzmq;

    return-void
.end method


# virtual methods
.method public zzlw()Z
    .locals 14

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzST:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzqW:Lcom/google/android/gms/internal/zzmq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSS:J

    sub-long v6, v4, v6

    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzbjt:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Excessive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " detected; call ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    monitor-exit v3

    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSR:D

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSQ:I

    int-to-double v8, v0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_2

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSS:J

    sub-long v6, v4, v6

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSP:J

    long-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSQ:I

    int-to-double v8, v0

    iget-wide v10, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSR:D

    add-double/2addr v6, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSR:D

    :cond_2
    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSS:J

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSR:D

    cmpl-double v0, v4, v12

    if-ltz v0, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSR:D

    sub-double/2addr v4, v12

    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSR:D

    monitor-exit v3

    return v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Excessive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzSU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " detected; call ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
