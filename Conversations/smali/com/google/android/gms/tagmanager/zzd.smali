.class Lcom/google/android/gms/tagmanager/zzd;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/tagmanager/DataLayer$zzb;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzd;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public zzQ(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "gtm.url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "gtm"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "referrer"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzd;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzax;->zzn(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method