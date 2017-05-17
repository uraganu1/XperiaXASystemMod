.class public Lcom/google/android/gms/analytics/internal/zzn;
.super Lcom/google/android/gms/analytics/internal/zzd;
.source "Unknown"


# instance fields
.field private volatile zzOu:Ljava/lang/String;

.field private zzPX:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzn;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzjW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcG(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "ClientId should be saved from worker thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcy(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "Storing clientId"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/analytics/internal/zzn;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "gaClientId"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to close clientId writing stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "Error creating clientId file"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    :goto_1
    return v3

    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "Failed to close clientId writing stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "Error writing to clientId file"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_2

    :goto_2
    return v3

    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    const-string/jumbo v1, "Failed to close clientId writing stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-nez v1, :cond_3

    :goto_3
    throw v0

    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v1

    const-string/jumbo v2, "Failed to close clientId writing stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private zzjW()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzjX()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/zzg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zzg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error saving clientId file"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "0"

    return-object v0
.end method


# virtual methods
.method protected zzab(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v0, "ClientId should be loaded from worker thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcy(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "gaClientId"

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/16 v2, 0x24

    :try_start_1
    new-array v2, v2, [B

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-gtz v4, :cond_0

    const/16 v4, 0xe

    if-lt v3, v4, :cond_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    const-string/jumbo v2, "Read client id from disk"

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/analytics/internal/zzn;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v0, :cond_4

    :goto_0
    return-object v4

    :cond_0
    const-string/jumbo v2, "clientId file seems corrupted, deleting it."

    invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/internal/zzn;->zzbd(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const-string/jumbo v2, "gaClientId"

    invoke-virtual {p1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    :goto_1
    return-object v1

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :try_start_3
    const-string/jumbo v2, "clientId file is empty, deleting it."

    invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/internal/zzn;->zzbd(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const-string/jumbo v2, "gaClientId"

    invoke-virtual {p1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_3

    :goto_2
    return-object v1

    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "Failed to close client id reading stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    :goto_3
    if-nez v0, :cond_5

    :goto_4
    return-object v1

    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v2, v1

    :goto_5
    :try_start_7
    const-string/jumbo v3, "Error reading client id file, deleting it"

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "gaClientId"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v2, :cond_6

    :goto_6
    return-object v1

    :cond_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_7
    if-nez v2, :cond_7

    :goto_8
    throw v0

    :cond_7
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    :catch_7
    move-exception v1

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_5

    :catch_9
    move-exception v2

    goto :goto_3
.end method

.method protected zzir()V
    .locals 0

    return-void
.end method

.method public zzjT()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzje()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzPX:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzn$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzn$1;-><init>(Lcom/google/android/gms/analytics/internal/zzn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzg;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzPX:Ljava/util/concurrent/Future;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzPX:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_3
    const-string/jumbo v0, "Loaded clientId"

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzPX:Ljava/util/concurrent/Future;

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ClientId loading or generation was interrupted"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "Failed to load or generate client id"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method zzjU()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzn$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzn$2;-><init>(Lcom/google/android/gms/analytics/internal/zzn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzg;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzPX:Ljava/util/concurrent/Future;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzjT()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method zzjV()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zzab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzjW()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected zzjX()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
