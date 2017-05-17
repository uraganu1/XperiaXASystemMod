.class Lcom/google/android/gms/common/zzd$zzb;
.super Lcom/google/android/gms/common/zzd$zza;
.source "Unknown"


# instance fields
.field private final zzafH:[B


# direct methods
.method constructor <init>([B)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/zzd$zza;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/common/zzd$zzb;->zzafH:[B

    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/zzd$zzb;->zzafH:[B

    return-object v0
.end method
