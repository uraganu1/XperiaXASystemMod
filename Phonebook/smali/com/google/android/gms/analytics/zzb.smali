.class public Lcom/google/android/gms/analytics/zzb;
.super Lcom/google/android/gms/analytics/internal/zzc;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/measurement/zzi;


# static fields
.field private static zzNA:Ljava/text/DecimalFormat;


# instance fields
.field private final zzNB:Ljava/lang/String;

.field private final zzNC:Landroid/net/Uri;

.field private final zzND:Z

.field private final zzNE:Z

.field private final zzNq:Lcom/google/android/gms/analytics/internal/zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/analytics/zzb;-><init>(Lcom/google/android/gms/analytics/internal/zzf;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzc;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcG(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzb;->zzNq:Lcom/google/android/gms/analytics/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzb;->zzNB:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/analytics/zzb;->zzND:Z

    iput-boolean p4, p0, Lcom/google/android/gms/analytics/zzb;->zzNE:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzb;->zzNB:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzb;->zzaR(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzb;->zzNC:Landroid/net/Uri;

    return-void
.end method

.method private static zzA(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lcom/google/android/gms/analytics/zzb;->zzb(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "1"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static zzaR(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->zzcG(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v1, "google-analytics.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static zzb(D)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/zzb;->zzNA:Ljava/text/DecimalFormat;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/analytics/zzb;->zzNA:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.######"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/analytics/zzb;->zzNA:Ljava/text/DecimalFormat;

    goto :goto_0
.end method

.method private static zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static zzc(Lcom/google/android/gms/measurement/zzc;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/zzc;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkb;

    if-nez v0, :cond_4

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/zzkc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkc;

    if-nez v0, :cond_6

    :goto_0
    const-class v0, Lcom/google/android/gms/internal/zzqn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqn;

    if-nez v0, :cond_7

    :goto_1
    const-class v0, Lcom/google/android/gms/internal/zzql;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzql;

    if-nez v0, :cond_8

    :goto_2
    const-class v0, Lcom/google/android/gms/internal/zzqi;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqi;

    if-nez v0, :cond_9

    :goto_3
    const-class v0, Lcom/google/android/gms/internal/zzqm;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqm;

    if-nez v0, :cond_a

    :goto_4
    const-class v0, Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqo;

    if-nez v0, :cond_b

    :goto_5
    const-class v0, Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqp;

    if-nez v0, :cond_c

    :goto_6
    const-class v0, Lcom/google/android/gms/internal/zzjz;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjz;

    if-nez v0, :cond_d

    :cond_1
    const-class v0, Lcom/google/android/gms/internal/zzka;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzka;

    if-nez v0, :cond_f

    :cond_2
    const-class v0, Lcom/google/android/gms/internal/zzqk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqk;

    if-nez v0, :cond_11

    :cond_3
    const-class v0, Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqj;

    if-nez v0, :cond_19

    :goto_7
    const-class v0, Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh;

    if-nez v0, :cond_1a

    :goto_8
    return-object v5

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->zziz()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzb;->zzh(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_6
    const-string/jumbo v1, "t"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zziA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "cid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sc"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zziD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sf"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zziF()D

    move-result-wide v6

    invoke-static {v5, v1, v6, v7}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    const-string/jumbo v1, "ni"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zziE()Z

    move-result v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Z)V

    const-string/jumbo v1, "adid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zziB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ate"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zziC()Z

    move-result v0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "cd"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqn;->zzAm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "a"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqn;->zzAn()I

    move-result v2

    int-to-double v6, v2

    invoke-static {v5, v1, v6, v7}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    const-string/jumbo v1, "dr"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqn;->zzAo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v1, "ec"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzql;->zzAj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ea"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzql;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "el"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzql;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ev"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzql;->getValue()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v5, v1, v6, v7}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v1, "cn"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "cs"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqi;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "cm"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqi;->zzzU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ck"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqi;->zzzV()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "cc"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqi;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ci"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqi;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "anid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqi;->zzzW()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "gclid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqi;->zzzX()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "dclid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqi;->zzzY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "aclid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqi;->zzzZ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v1, "exd"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqm;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "exf"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqm;->zzAk()Z

    move-result v0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_b
    const-string/jumbo v1, "sn"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqo;->zzAq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sa"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqo;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "st"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqo;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    const-string/jumbo v1, "utv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqp;->zzAr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "utt"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqp;->getTimeInMillis()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v5, v1, v6, v7}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    const-string/jumbo v1, "utc"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqp;->zzAj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "utl"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqp;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjz;->zzix()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzc;->zzU(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzka;->zziy()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzc;->zzW(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/analytics/zzb;->zzb(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqk;->zzAf()Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object v1

    if-nez v1, :cond_13

    :cond_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqk;->zzAi()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqk;->zzAg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqk;->zzAh()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzc;->zzad(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v3

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    :goto_10
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    :cond_13
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->build()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v6, "&"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/ecommerce/Promotion;

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzc;->zzaa(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->zzaX(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_c

    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/ecommerce/Product;

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzc;->zzY(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/analytics/ecommerce/Product;->zzaX(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_d

    :cond_17
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/ecommerce/Product;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/google/android/gms/analytics/zzc;->zzab(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/android/gms/analytics/ecommerce/Product;->zzaX(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_f

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "nm"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :cond_19
    const-string/jumbo v1, "ul"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sd"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->zzAa()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v5, v1, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    const-string/jumbo v1, "sr"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->zzAb()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->zzAc()I

    move-result v3

    invoke-static {v5, v1, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;II)V

    const-string/jumbo v1, "vp"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->zzAd()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->zzAe()I

    move-result v0

    invoke-static {v5, v1, v2, v0}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;II)V

    goto/16 :goto_7

    :cond_1a
    const-string/jumbo v1, "an"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqh;->zzkP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "aid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqh;->zzwg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "aiid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqh;->zzzT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "av"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqh;->zzkR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method private static zzh(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v4

    :cond_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v4

    :cond_2
    return-object p0

    :cond_3
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/zzb;->zzb(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v4

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_6

    return-object v4

    :cond_6
    const-string/jumbo v0, "1"

    return-object v0
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/measurement/zzc;)V
    .locals 12

    const-wide/16 v1, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/zzc;->zzzJ()Z

    move-result v0

    const-string/jumbo v3, "Can\'t deliver not submitted measurement"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    const-string/jumbo v0, "deliver should be called on worker thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcy(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/zzc;->zzzE()Lcom/google/android/gms/measurement/zzc;

    move-result-object v3

    const-class v0, Lcom/google/android/gms/internal/zzkc;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/zzc;->zze(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/zzkc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzkc;->zziA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzkc;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzb;->zzNq:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzji()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getAppOptOut()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzkc;->zziF()D

    move-result-wide v10

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzkc;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v11, v0}, Lcom/google/android/gms/analytics/internal/zzam;->zza(DLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzb;->zzc(Lcom/google/android/gms/measurement/zzc;)Ljava/util/Map;

    move-result-object v10

    const-string/jumbo v0, "v"

    const-string/jumbo v3, "1"

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "_v"

    sget-object v3, Lcom/google/android/gms/analytics/internal/zze;->zzOS:Ljava/lang/String;

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "tid"

    iget-object v3, p0, Lcom/google/android/gms/analytics/zzb;->zzNB:Ljava/lang/String;

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzb;->zzNq:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzji()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "uid"

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzkc;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v0, v3}, Lcom/google/android/gms/analytics/internal/zzam;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/zzc;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh;

    if-nez v0, :cond_5

    :goto_0
    new-instance v0, Lcom/google/android/gms/analytics/internal/zzh;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzkc;->getClientId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/analytics/zzb;->zzNB:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzkc;->zziB()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_1
    move-wide v6, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/analytics/internal/zzh;-><init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zzip()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Lcom/google/android/gms/analytics/internal/zzh;)J

    move-result-wide v0

    const-string/jumbo v2, "_s"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzab;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zziU()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/zzc;->zzzH()J

    move-result-wide v4

    move-object v3, v10

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/analytics/internal/zzab;-><init>(Lcom/google/android/gms/analytics/internal/zzc;Ljava/util/Map;JZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zzip()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Lcom/google/android/gms/analytics/internal/zzab;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zziU()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzb;->zzc(Lcom/google/android/gms/measurement/zzc;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "Ignoring measurement without type"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zzh(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zziU()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzb;->zzc(Lcom/google/android/gms/measurement/zzc;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "Ignoring measurement without client id"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zzh(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v0, "Sampling enabled. Hit sampled out. sampling rate"

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {v10}, Lcom/google/android/gms/analytics/zzb;->zzA(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Dry run is enabled. GoogleAnalytics would have sent"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zzc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string/jumbo v3, "an"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqh;->zzkP()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/google/android/gms/analytics/internal/zzam;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "aid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqh;->zzwg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/google/android/gms/analytics/internal/zzam;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "av"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqh;->zzkR()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/google/android/gms/analytics/internal/zzam;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "aiid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqh;->zzzT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v3, v0}, Lcom/google/android/gms/analytics/internal/zzam;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v5, v9

    goto/16 :goto_1
.end method

.method public zzii()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzb;->zzNC:Landroid/net/Uri;

    return-object v0
.end method
