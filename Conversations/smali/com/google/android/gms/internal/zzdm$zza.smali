.class public Lcom/google/android/gms/internal/zzdm$zza;
.super Lcom/google/android/gms/internal/zzim;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzF:Ljava/lang/String;

.field private final zzpD:Lcom/google/android/gms/internal/zzjp;

.field private final zzzE:Ljava/lang/String;

.field private final zzzF:Ljava/lang/String;

.field private final zzzG:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzjp;Ljava/lang/String;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzim;-><init>()V

    const-string/jumbo v0, "play.google.com"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdm$zza;->zzzE:Ljava/lang/String;

    const-string/jumbo v0, "market"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdm$zza;->zzzF:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/internal/zzdm$zza;->zzzG:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdm$zza;->zzpD:Lcom/google/android/gms/internal/zzjp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdm$zza;->zzF:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zzT(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v1
.end method

.method public zzbr()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdm$zza;->zzF:Ljava/lang/String;

    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzdm$zza;->zzT(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdm$zza;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzir;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1
    add-int/lit8 v5, v0, 0x1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "play.google.com"

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "market"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdm$zza;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzjp;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/zzdm$zza;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzjp;->zzhX()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v6, v7, v0}, Lcom/google/android/gms/internal/zzir;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v3, ""

    const/16 v7, 0x12c

    if-ge v1, v7, :cond_3

    :cond_2
    move-object v1, v3

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_6

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    move v0, v5

    move-object v2, v1

    goto :goto_0

    :cond_3
    const/16 v7, 0x18f

    if-gt v1, v7, :cond_2

    :try_start_3
    const-string/jumbo v1, "Location"

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "location"

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "Location"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_3

    :cond_5
    const-string/jumbo v1, "location"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_3

    :cond_6
    const-string/jumbo v1, "Arrived at landing page, this ideally should not happen. Will open it in browser."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while parsing ping URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_1
    move-exception v0

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while pinging URL: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while pinging URL: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4
.end method
