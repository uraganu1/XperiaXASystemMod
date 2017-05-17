.class public Lcom/google/android/gms/internal/zzbj;
.super Lcom/google/android/gms/internal/zzbg;
.source "Unknown"


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private zztw:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbg;-><init>()V

    return-void
.end method


# virtual methods
.method zza([Ljava/lang/String;)[B
    .locals 3

    .prologue
    array-length v0, p1

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbi;->zzx(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzbj;->zzk(I)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method zzk(I)B
    .locals 2

    .prologue
    and-int/lit16 v0, p1, 0xff

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x18

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public zzu(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x4

    const-string/jumbo v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbj;->zza([Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbj;->zzcL()Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbj;->zztw:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbj;->zzpV:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbj;->zztw:Ljava/security/MessageDigest;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbj;->zztw:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbj;->zztw:Ljava/security/MessageDigest;

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbj;->zztw:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    array-length v3, v1

    if-gt v3, v0, :cond_0

    array-length v0, v1

    :cond_0
    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v2

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
