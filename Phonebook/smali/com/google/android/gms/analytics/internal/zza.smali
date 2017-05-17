.class public Lcom/google/android/gms/analytics/internal/zza;
.super Lcom/google/android/gms/analytics/internal/zzd;
.source "Unknown"


# static fields
.field public static zzOB:Z


# instance fields
.field private zzOC:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private final zzOD:Lcom/google/android/gms/analytics/internal/zzaj;

.field private zzOE:Ljava/lang/String;

.field private zzOF:Z

.field private zzOG:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOF:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOG:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzf;->zziT()Lcom/google/android/gms/internal/zznl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaj;-><init>(Lcom/google/android/gms/internal/zznl;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOD:Lcom/google/android/gms/analytics/internal/zzaj;

    return-void
.end method

.method private zza(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zza;->zziZ()Lcom/google/android/gms/analytics/internal/zzn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzn;->zzjT()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOG:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOF:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOE:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/zza;->zzaY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v2

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zza;->zzaZ(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v3

    return v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    return v6

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zza;->zziJ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOE:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOF:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    if-eqz p1, :cond_4

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/zza;->zzaY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOE:Ljava/lang/String;

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zza;->zzaZ(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v3

    return v0

    :cond_6
    monitor-exit v3

    return v5

    :cond_7
    monitor-exit v3

    return v6

    :cond_8
    const-string/jumbo v1, "Resetting the client id because Advertising Id changed."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zza;->zzba(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zza;->zziZ()Lcom/google/android/gms/analytics/internal/zzn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzn;->zzjU()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "New client Id"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zza;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private static zzaY(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzam;->zzbs(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%032X"

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-direct {v5, v7, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private zzaZ(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/zza;->zzaY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Storing hashed adid."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zza;->zzba(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zza;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "gaClientIdData"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error creating hash file"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zza;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return v4
.end method

.method private declared-synchronized zziH()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOD:Lcom/google/android/gms/analytics/internal/zzaj;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzaj;->zzv(J)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOC:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOD:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->start()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zza;->zziI()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOC:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zza;->zza(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v0, "Failed to reset client id on adid change. Not using adid"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zza;->zzbe(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOC:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zza;->zzOC:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public zziC()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zza;->zzje()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zza;->zziH()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public zziG()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zza;->zzje()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zza;->zziH()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected zziI()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zza;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added \'<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />\' to your application manifest file. See http://goo.gl/naFqQk for details."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zza;->zzbd(Ljava/lang/String;)V

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v2, Lcom/google/android/gms/analytics/internal/zza;->zzOB:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/gms/analytics/internal/zza;->zzOB:Z

    const-string/jumbo v2, "Error getting advertiser id"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected zziJ()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zza;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "gaClientIdData"

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    const/16 v0, 0x80

    new-array v3, v0, [B

    const/4 v0, 0x0

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    if-lez v4, :cond_1

    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :cond_0
    :try_start_2
    const-string/jumbo v0, "Hash file seems corrupted, deleting it."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zza;->zzbd(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zza;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "gaClientIdData"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Hash file is empty."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zza;->zzba(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_3
    const-string/jumbo v2, "Error reading Hash file, deleting it"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zza;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "gaClientIdData"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method protected zzir()V
    .locals 0

    return-void
.end method
