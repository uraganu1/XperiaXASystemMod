.class Lcom/google/android/gms/analytics/Tracker$zza;
.super Lcom/google/android/gms/analytics/internal/zzd;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzPF:Lcom/google/android/gms/analytics/Tracker;

.field private zzPI:J

.field private zzPJ:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/Tracker;Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzPF:Lcom/google/android/gms/analytics/Tracker;

    invoke-direct {p0, p2}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzPI:J

    return-void
.end method


# virtual methods
.method protected zziJ()V
    .locals 0

    .prologue
    return-void
.end method

.method public declared-synchronized zziM()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzPJ:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzPJ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
