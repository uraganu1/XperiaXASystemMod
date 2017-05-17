.class public Lcom/google/android/gms/internal/zza;
.super Lcom/google/android/gms/internal/zzr;
.source "Unknown"


# instance fields
.field private zza:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzr;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzi;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzr;-><init>(Lcom/google/android/gms/internal/zzi;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zza;->zza:Landroid/content/Intent;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzr;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "User needs to (re)enter credentials."

    return-object v0
.end method
