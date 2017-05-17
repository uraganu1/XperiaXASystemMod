.class public abstract Lcom/google/android/gms/common/data/zzc;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field protected final zzahi:Lcom/google/android/gms/common/data/DataHolder;

.field protected zzaje:I

.field private zzajf:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    iput-object v0, p0, Lcom/google/android/gms/common/data/zzc;->zzahi:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/data/zzc;->zzbF(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/common/data/zzc;

    if-nez v1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/common/data/zzc;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p1, Lcom/google/android/gms/common/data/zzc;->zzaje:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zzaje:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p1, Lcom/google/android/gms/common/data/zzc;->zzajf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zzajf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/common/data/zzc;->zzahi:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v2, p0, Lcom/google/android/gms/common/data/zzc;->zzahi:Lcom/google/android/gms/common/data/DataHolder;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->zzahi:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/zzc;->zzaje:I

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zzajf:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zzaje:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/data/zzc;->zzajf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/data/zzc;->zzahi:Lcom/google/android/gms/common/data/DataHolder;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected zzbF(I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzab(Z)V

    iput p1, p0, Lcom/google/android/gms/common/data/zzc;->zzaje:I

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzc;->zzahi:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/zzc;->zzaje:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->zzbH(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/data/zzc;->zzajf:I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/data/zzc;->zzahi:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
