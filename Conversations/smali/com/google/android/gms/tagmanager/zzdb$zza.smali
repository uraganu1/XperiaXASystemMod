.class final Lcom/google/android/gms/tagmanager/zzdb$zza;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field private final zzCv:J

.field private final zzaNY:J

.field final synthetic zzblA:Lcom/google/android/gms/tagmanager/zzdb;

.field private final zzblw:Ljava/lang/String;

.field private final zzblx:Ljava/lang/String;

.field private final zzbly:J

.field private zzblz:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzdb;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblA:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblx:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzaNY:J

    iput-wide p6, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbly:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzCv:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbly:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblz:J

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbly:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblA:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zza(Lcom/google/android/gms/tagmanager/zzdb;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblx:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblz:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblz:J

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzcH()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblA:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zzc(Lcom/google/android/gms/tagmanager/zzdb;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzaNY:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblA:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zzb(Lcom/google/android/gms/tagmanager/zzdb;)Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    const/16 v3, 0x10

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "event"

    aput-object v6, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblw:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "gtm.timerInterval"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzaNY:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "gtm.timerLimit"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbly:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "gtm.timerStartTime"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzCv:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "gtm.timerCurrentTime"

    aput-object v2, v3, v1

    const/16 v1, 0x9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "gtm.timerElapsedTime"

    aput-object v2, v3, v1

    const/16 v1, 0xb

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzCv:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "gtm.timerEventNumber"

    aput-object v2, v3, v1

    const/16 v1, 0xd

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblz:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "gtm.triggers"

    aput-object v2, v3, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblx:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto/16 :goto_3
.end method

.method protected zzcH()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblA:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zzd(Lcom/google/android/gms/tagmanager/zzdb;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblA:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zzf(Lcom/google/android/gms/tagmanager/zzdb;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblA:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdb;->zzf(Lcom/google/android/gms/tagmanager/zzdb;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblA:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdb;->zzf(Lcom/google/android/gms/tagmanager/zzdb;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return v6

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzblA:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zze(Lcom/google/android/gms/tagmanager/zzdb;)Z

    move-result v0

    return v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v0, v4, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method
