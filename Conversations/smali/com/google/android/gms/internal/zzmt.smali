.class public final Lcom/google/android/gms/internal/zzmt;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/zzmq;


# static fields
.field private static zzaoa:Lcom/google/android/gms/internal/zzmt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zzsc()Lcom/google/android/gms/internal/zzmq;
    .locals 2

    const-class v1, Lcom/google/android/gms/internal/zzmt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzmt;->zzaoa:Lcom/google/android/gms/internal/zzmt;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzmt;->zzaoa:Lcom/google/android/gms/internal/zzmt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/zzmt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzmt;->zzaoa:Lcom/google/android/gms/internal/zzmt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
