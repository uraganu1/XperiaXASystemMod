.class public Lcom/google/android/gms/analytics/internal/zzi$zza;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzPr:Lcom/google/android/gms/analytics/internal/zzi;

.field private volatile zzPs:Lcom/google/android/gms/analytics/internal/zzac;

.field private volatile zzPt:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "AnalyticsServiceConnection.onServiceConnected"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzx;->zzcx(Ljava/lang/String;)V

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v3, "Got binder with a wrong descriptor"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPt:Z

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPs:Lcom/google/android/gms/analytics/internal/zzac;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v1, "Service connected with null binder"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzbe(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :cond_1
    :try_start_5
    invoke-static {p2}, Lcom/google/android/gms/analytics/internal/zzac$zza;->zzaf(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/zzac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v2, "Bound to IAnalyticsService interface"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzi;->zzba(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v2, "Service connect failed to get IAnalyticsService"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzi;->zzbe(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_2
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzrz()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzi;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Lcom/google/android/gms/analytics/internal/zzi;)Lcom/google/android/gms/analytics/internal/zzi$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v2, "onServiceConnected received after the timeout limit"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzi;->zzbd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzi;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/internal/zzi$zza$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/analytics/internal/zzi$zza$1;-><init>(Lcom/google/android/gms/analytics/internal/zzi$zza;Lcom/google/android/gms/analytics/internal/zzac;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/zzg;->zzf(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "AnalyticsServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzi$zza$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/zzi$zza$2;-><init>(Lcom/google/android/gms/analytics/internal/zzi$zza;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzg;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzjt()Lcom/google/android/gms/analytics/internal/zzac;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zziS()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.gms"

    const-string/jumbo v3, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzi;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "app_package_name"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzrz()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v2

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPs:Lcom/google/android/gms/analytics/internal/zzac;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPt:Z

    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-static {v3}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Lcom/google/android/gms/analytics/internal/zzi;)Lcom/google/android/gms/analytics/internal/zzi$zza;

    move-result-object v3

    const/16 v4, 0x81

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v2, "Bind to service requested"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zziV()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkw()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPt:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPs:Lcom/google/android/gms/analytics/internal/zzac;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPs:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v0, :cond_1

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPt:Z

    monitor-exit p0

    return-object v5

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v1, "Wait for service connect was interrupted"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzbd(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v2, "Successfully bound to service but never got onServiceConnected callback"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzi;->zzbe(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
