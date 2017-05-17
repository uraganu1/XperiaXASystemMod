.class abstract Lcom/google/android/gms/common/zzd$zza;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private zzafG:I


# direct methods
.method protected constructor <init>([B)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "cert hash data has incorrect length"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/zzd$zza;->zzafG:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static zzcs(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string/jumbo v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/common/zzd$zza;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/common/zzd$zza;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzd$zza;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/zzd$zza;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method abstract getBytes()[B
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/zzd$zza;->zzafG:I

    return v0
.end method
