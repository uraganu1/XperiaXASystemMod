.class Lcom/google/android/gms/tagmanager/zzcn;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzp$zzf;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbhM:Ljava/lang/String;

.field private zzbkg:Lcom/google/android/gms/tagmanager/zzbf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzbf",
            "<",
            "Lcom/google/android/gms/internal/zzrq$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbkn:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbhM:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbkn:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private zza(Ljava/io/ByteArrayOutputStream;)Lcom/google/android/gms/internal/zzrs$zzc;
    .locals 2

    .prologue
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzaz;->zzgi(Ljava/lang/String;)Lcom/google/android/gms/internal/zzrs$zzc;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaI(Ljava/lang/String;)V

    return-object v1

    :catch_1
    move-exception v0

    const-string/jumbo v0, "Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn\'t contain a JSON container"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    return-object v1
.end method

.method private zzd(Lcom/google/android/gms/internal/zzrq$zza;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    iget-object v0, p1, Lcom/google/android/gms/internal/zzrq$zza;->zzju:Lcom/google/android/gms/internal/zzaf$zzf;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzrq$zza;->zzbme:Lcom/google/android/gms/internal/zzaf$zzj;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Resource and SupplementedResource are NULL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zzx([B)Lcom/google/android/gms/internal/zzrs$zzc;
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzaf$zzf;->zzc([B)Lcom/google/android/gms/internal/zzaf$zzf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrs;->zzb(Lcom/google/android/gms/internal/zzaf$zzf;)Lcom/google/android/gms/internal/zzrs$zzc;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "The container was successfully loaded from the resource (using binary file)"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzst; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/zzrs$zzg; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "The resource file is corrupted. The container cannot be extracted from the binary file"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    return-object v2

    :catch_1
    move-exception v0

    const-string/jumbo v0, "The resource file is invalid. The container from the binary file is invalid"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbkn:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zzGl()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbkn:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzcn$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzcn$1;-><init>(Lcom/google/android/gms/tagmanager/zzcn;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method zzHc()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbkg:Lcom/google/android/gms/tagmanager/zzbf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbkg:Lcom/google/android/gms/tagmanager/zzbf;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzGk()V

    const-string/jumbo v0, "Attempting to load resource from disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcb;->zzGU()Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcb;->zzGV()Lcom/google/android/gms/tagmanager/zzcb$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbjV:Lcom/google/android/gms/tagmanager/zzcb$zza;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbhM:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcb;->zzGU()Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzcb;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcn;->zzHd()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzrs;->zzb(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq$zza;->zzy([B)Lcom/google/android/gms/internal/zzrq$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcn;->zzd(Lcom/google/android/gms/internal/zzrq$zza;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbkg:Lcom/google/android/gms/tagmanager/zzbf;

    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzI(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const-string/jumbo v0, "The Disk resource was successfully read."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Callback must be set before execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcb;->zzGU()Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcb;->zzGV()Lcom/google/android/gms/tagmanager/zzcb$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbjW:Lcom/google/android/gms/tagmanager/zzcb$zza;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbkg:Lcom/google/android/gms/tagmanager/zzbf;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbju:Lcom/google/android/gms/tagmanager/zzbf$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Lcom/google/android/gms/tagmanager/zzbf$zza;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Failed to find the resource in the disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbkg:Lcom/google/android/gms/tagmanager/zzbf;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbju:Lcom/google/android/gms/tagmanager/zzbf$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Lcom/google/android/gms/tagmanager/zzbf$zza;)V

    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v0, "Error closing stream for reading resource from disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbkg:Lcom/google/android/gms/tagmanager/zzbf;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbjv:Lcom/google/android/gms/tagmanager/zzbf$zza;

    invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Lcom/google/android/gms/tagmanager/zzbf$zza;)V

    const-string/jumbo v0, "Failed to read the resource from disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v0, "Error closing stream for reading resource from disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbkg:Lcom/google/android/gms/tagmanager/zzbf;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbjv:Lcom/google/android/gms/tagmanager/zzbf$zza;

    invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Lcom/google/android/gms/tagmanager/zzbf$zza;)V

    const-string/jumbo v0, "Failed to read the resource from disk. The resource is inconsistent"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    :catch_5
    move-exception v0

    const-string/jumbo v0, "Error closing stream for reading resource from disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_2
    throw v0

    :catch_6
    move-exception v1

    const-string/jumbo v1, "Error closing stream for reading resource from disk"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    goto :goto_2
.end method

.method zzHd()Ljava/io/File;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resource_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbhM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcn;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "google_tagmanager"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzbf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzbf",
            "<",
            "Lcom/google/android/gms/internal/zzrq$zza;",
            ">;)V"
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbkg:Lcom/google/android/gms/tagmanager/zzbf;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzrq$zza;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn;->zzbkn:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzcn$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/zzcn$2;-><init>(Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/internal/zzrq$zza;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method zzc(Lcom/google/android/gms/internal/zzrq$zza;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcn;->zzHd()Ljava/io/File;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzsu;->toByteArray(Lcom/google/android/gms/internal/zzsu;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Error opening resource file for writing"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    return v3

    :catch_1
    move-exception v0

    const-string/jumbo v0, "error closing stream for writing resource to disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_3
    const-string/jumbo v2, "Error writing resource to disk. Removing resource from disk."

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    return v3

    :catch_3
    move-exception v0

    const-string/jumbo v0, "error closing stream for writing resource to disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    throw v0

    :catch_4
    move-exception v1

    const-string/jumbo v1, "error closing stream for writing resource to disk"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public zzke(I)Lcom/google/android/gms/internal/zzrs$zzc;
    .locals 4

    .prologue
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempting to load a container from the resource ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcn;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrs;->zzb(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Ljava/io/ByteArrayOutputStream;)Lcom/google/android/gms/internal/zzrs$zzc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcn;->zzx([B)Lcom/google/android/gms/internal/zzrs$zzc;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Failed to load the container. No default container resource found with the resource ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    return-object v3

    :cond_0
    :try_start_2
    const-string/jumbo v1, "The container was successfully loaded from the resource (using JSON file format)"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error reading the default container with resource ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    return-object v3
.end method
