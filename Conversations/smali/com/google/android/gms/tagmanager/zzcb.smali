.class Lcom/google/android/gms/tagmanager/zzcb;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzcb$zza;
    }
.end annotation


# static fields
.field private static zzbjQ:Lcom/google/android/gms/tagmanager/zzcb;


# instance fields
.field private volatile zzbhM:Ljava/lang/String;

.field private volatile zzbjR:Lcom/google/android/gms/tagmanager/zzcb$zza;

.field private volatile zzbjS:Ljava/lang/String;

.field private volatile zzbjT:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcb;->clear()V

    return-void
.end method

.method static zzGU()Lcom/google/android/gms/tagmanager/zzcb;
    .locals 2

    const-class v1, Lcom/google/android/gms/tagmanager/zzcb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjQ:Lcom/google/android/gms/tagmanager/zzcb;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjQ:Lcom/google/android/gms/tagmanager/zzcb;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcb;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcb;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjQ:Lcom/google/android/gms/tagmanager/zzcb;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzgk(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private zzq(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "&gtm_debug=x"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbjU:Lcom/google/android/gms/tagmanager/zzcb$zza;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjR:Lcom/google/android/gms/tagmanager/zzcb$zza;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjS:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbhM:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjT:Ljava/lang/String;

    return-void
.end method

.method getContainerId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbhM:Ljava/lang/String;

    return-object v0
.end method

.method zzGV()Lcom/google/android/gms/tagmanager/zzcb$zza;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjR:Lcom/google/android/gms/tagmanager/zzcb$zza;

    return-object v0
.end method

.method zzGW()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjS:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized zzp(Landroid/net/Uri;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string/jumbo v1, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid preview uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :catch_0
    move-exception v0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Container preview url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V

    const-string/jumbo v1, ".*?&gtm_debug=x$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbjV:Lcom/google/android/gms/tagmanager/zzcb$zza;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjR:Lcom/google/android/gms/tagmanager/zzcb$zza;

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzcb;->zzq(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjT:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjR:Lcom/google/android/gms/tagmanager/zzcb$zza;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbjV:Lcom/google/android/gms/tagmanager/zzcb$zza;

    if-ne v0, v1, :cond_5

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/r?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjS:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcb;->zzgk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbhM:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v4

    :cond_2
    :try_start_3
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbjW:Lcom/google/android/gms/tagmanager/zzcb$zza;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjR:Lcom/google/android/gms/tagmanager/zzcb$zza;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_4
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcb;->zzgk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbhM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    monitor-exit p0

    return v3

    :cond_4
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Exit preview mode for container: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbhM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbjU:Lcom/google/android/gms/tagmanager/zzcb$zza;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjR:Lcom/google/android/gms/tagmanager/zzcb$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjS:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v4

    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbjR:Lcom/google/android/gms/tagmanager/zzcb$zza;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbjW:Lcom/google/android/gms/tagmanager/zzcb$zza;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eq v0, v1, :cond_1

    goto :goto_1
.end method
