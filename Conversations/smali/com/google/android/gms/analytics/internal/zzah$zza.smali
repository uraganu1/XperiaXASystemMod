.class Lcom/google/android/gms/analytics/internal/zzah$zza;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field private zzTe:I

.field private zzTf:Ljava/io/ByteArrayOutputStream;

.field final synthetic zzTg:Lcom/google/android/gms/analytics/internal/zzah;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzah;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTg:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTf:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public zzj(Lcom/google/android/gms/analytics/internal/zzab;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTe:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTg:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzah;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzkD()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTg:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Lcom/google/android/gms/analytics/internal/zzab;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v0, v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTg:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzah;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->zzkv()I

    move-result v2

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_3

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTg:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzah;->zzjn()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->zzkx()I

    move-result v2

    if-gt v0, v2, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_5

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTe:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTe:I

    return v4

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTg:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzjm()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "Error formatting hit"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    return v4

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTg:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzjm()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "Hit size exceeds the maximum size limit"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    return v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTf:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzah;->zzlD()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTg:Lcom/google/android/gms/analytics/internal/zzah;

    const-string/jumbo v2, "Failed to write payload when batching hits"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return v4
.end method

.method public zzlE()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzTe:I

    return v0
.end method
