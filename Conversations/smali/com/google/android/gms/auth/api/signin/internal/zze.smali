.class public Lcom/google/android/gms/auth/api/signin/internal/zze;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field static zzXy:I


# instance fields
.field private zzXz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    sput v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzXy:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzXz:I

    return-void
.end method


# virtual methods
.method public zzP(Z)Lcom/google/android/gms/auth/api/signin/internal/zze;
    .locals 3

    .prologue
    const/4 v0, 0x0

    sget v1, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzXy:I

    iget v2, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzXz:I

    mul-int/2addr v1, v2

    if-nez p1, :cond_0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzXz:I

    return-object p0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public zzne()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzXz:I

    return v0
.end method

.method public zzp(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zze;
    .locals 2

    .prologue
    sget v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzXy:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzXz:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzXz:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method