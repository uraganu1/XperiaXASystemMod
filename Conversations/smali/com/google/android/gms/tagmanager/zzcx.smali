.class Lcom/google/android/gms/tagmanager/zzcx;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzcx$zzb;,
        Lcom/google/android/gms/tagmanager/zzcx$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzblh:Lcom/google/android/gms/tagmanager/zzcx$zzb;

.field private final zzbli:Lcom/google/android/gms/tagmanager/zzcx$zza;

.field private final zzzN:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcx$zza;)V
    .locals 1

    .prologue
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcx$1;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcx$1;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/tagmanager/zzcx;-><init>(Lcom/google/android/gms/tagmanager/zzcx$zzb;Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcx$zza;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcx$zzb;Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcx$zza;)V
    .locals 7

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcx;->zzblh:Lcom/google/android/gms/tagmanager/zzcx$zzb;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcx;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzcx;->zzbli:Lcom/google/android/gms/tagmanager/zzcx$zza;

    const-string/jumbo v1, "GoogleTagManager"

    const-string/jumbo v2, "4.00"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzcx;->zzc(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/zzcx;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcx;->zzzN:Ljava/lang/String;

    return-void
.end method

.method static zzc(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return-object v1

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public zzE(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/zzaq;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v2, 0x1

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzaq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcx;->zzd(Lcom/google/android/gms/tagmanager/zzaq;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/zzcx;->zzblh:Lcom/google/android/gms/tagmanager/zzcx$zzb;

    invoke-interface {v6, v1}, Lcom/google/android/gms/tagmanager/zzcx$zzb;->zzd(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-nez v2, :cond_2

    :goto_1
    :try_start_1
    const-string/jumbo v1, "User-Agent"

    iget-object v7, p0, Lcom/google/android/gms/tagmanager/zzcx;->zzzN:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v7, 0xc8

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcx;->zzbli:Lcom/google/android/gms/tagmanager/zzcx$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzcx$zza;->zza(Lcom/google/android/gms/tagmanager/zzaq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "No destination: discarding hit."

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcx;->zzbli:Lcom/google/android/gms/tagmanager/zzcx$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzcx$zza;->zzb(Lcom/google/android/gms/tagmanager/zzaq;)V

    goto :goto_3

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbl;->zzbb(Landroid/content/Context;)V

    move v2, v3

    goto :goto_1

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bad response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcx;->zzbli:Lcom/google/android/gms/tagmanager/zzcx$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzcx$zza;->zzc(Lcom/google/android/gms/tagmanager/zzaq;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception sending hit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcx;->zzbli:Lcom/google/android/gms/tagmanager/zzcx$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzcx$zza;->zzc(Lcom/google/android/gms/tagmanager/zzaq;)V

    goto :goto_3
.end method

.method public zzGw()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcx;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "...no network connectivity"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzd(Lcom/google/android/gms/tagmanager/zzaq;)Ljava/net/URL;
    .locals 2

    .prologue
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzaq;->zzGF()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Error trying to parse the GTM url."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
