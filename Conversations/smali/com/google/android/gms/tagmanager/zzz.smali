.class public Lcom/google/android/gms/tagmanager/zzz;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzar;


# static fields
.field private static final zzbhz:Ljava/lang/Object;

.field private static zzbiM:Lcom/google/android/gms/tagmanager/zzz;


# instance fields
.field private zzbiN:Ljava/lang/String;

.field private zzbiO:Ljava/lang/String;

.field private zzbiP:Lcom/google/android/gms/tagmanager/zzas;

.field private zzbic:Lcom/google/android/gms/tagmanager/zzcd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzz;->zzbhz:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzat;->zzaZ(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzat;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/tagmanager/zzcs;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzcs;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzz;-><init>(Lcom/google/android/gms/tagmanager/zzas;Lcom/google/android/gms/tagmanager/zzcd;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzas;Lcom/google/android/gms/tagmanager/zzcd;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzz;->zzbiP:Lcom/google/android/gms/tagmanager/zzas;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzz;->zzbic:Lcom/google/android/gms/tagmanager/zzcd;

    return-void
.end method

.method public static zzaX(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzar;
    .locals 2

    sget-object v1, Lcom/google/android/gms/tagmanager/zzz;->zzbhz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzz;->zzbiM:Lcom/google/android/gms/tagmanager/zzz;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzz;->zzbiM:Lcom/google/android/gms/tagmanager/zzz;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzz;->zzbiM:Lcom/google/android/gms/tagmanager/zzz;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public zzgc(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzbic:Lcom/google/android/gms/tagmanager/zzcd;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzcd;->zzlw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzbiN:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzbiP:Lcom/google/android/gms/tagmanager/zzas;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzas;->zzgg(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzbiO:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzz;->zzbiN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzz;->zzbiO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sending wrapped url hit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error wrapping URL for testing."

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method