.class Lcom/google/android/gms/analytics/internal/zzb$2;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzb;->zzJ(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQd:Lcom/google/android/gms/analytics/internal/zzb;

.field final synthetic zzQe:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzb;Z)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzb$2;->zzQd:Lcom/google/android/gms/analytics/internal/zzb;

    iput-boolean p2, p0, Lcom/google/android/gms/analytics/internal/zzb$2;->zzQe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb$2;->zzQd:Lcom/google/android/gms/analytics/internal/zzb;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Lcom/google/android/gms/analytics/internal/zzb;)Lcom/google/android/gms/analytics/internal/zzl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzb$2;->zzQe:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzJ(Z)V

    return-void
.end method
