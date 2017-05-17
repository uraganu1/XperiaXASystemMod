.class Lcom/google/android/gms/tagmanager/zzaj;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method private static zza(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzaf$zzd;)V
    .locals 4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaf$zzd;->zziu:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/tagmanager/DataLayer;->zzfj(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static zza(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzaf$zzi;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaf$zzi;->zzjj:Lcom/google/android/gms/internal/zzaf$zzd;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaf$zzi;->zzjj:Lcom/google/android/gms/internal/zzaf$zzd;

    invoke-static {p0, v0}, Lcom/google/android/gms/tagmanager/zzaj;->zza(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzaf$zzd;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaf$zzi;->zzjj:Lcom/google/android/gms/internal/zzaf$zzd;

    invoke-static {p0, v0}, Lcom/google/android/gms/tagmanager/zzaj;->zzb(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzaf$zzd;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaf$zzi;->zzjj:Lcom/google/android/gms/internal/zzaf$zzd;

    invoke-static {p0, v0}, Lcom/google/android/gms/tagmanager/zzaj;->zzc(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzaf$zzd;)V

    return-void

    :cond_0
    const-string/jumbo v0, "supplemental missing experimentSupplemental"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzaf$zzd;)V
    .locals 4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaf$zzd;->zzit:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzaj;->zzc(Lcom/google/android/gms/internal/zzag$zza;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_1
.end method

.method private static zzc(Lcom/google/android/gms/internal/zzag$zza;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdf;->zzl(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is not a map value, ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzc(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzaf$zzd;)V
    .locals 14

    iget-object v4, p1, Lcom/google/android/gms/internal/zzaf$zzd;->zziv:[Lcom/google/android/gms/internal/zzaf$zzc;

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-lt v3, v5, :cond_0

    return-void

    :cond_0
    aget-object v6, v4, v3

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaf$zzc;->key:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaf$zzc;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    iget-wide v8, v6, Lcom/google/android/gms/internal/zzaf$zzc;->zzip:J

    iget-wide v10, v6, Lcom/google/android/gms/internal/zzaf$zzc;->zziq:J

    iget-boolean v2, v6, Lcom/google/android/gms/internal/zzaf$zzc;->zzir:Z

    if-nez v2, :cond_6

    :cond_1
    :goto_2
    cmp-long v0, v8, v10

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-long/2addr v10, v8

    long-to-double v10, v10

    mul-double/2addr v0, v10

    long-to-double v8, v8

    add-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_2
    iget-object v0, v6, Lcom/google/android/gms/internal/zzaf$zzc;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->zzfj(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaf$zzc;->key:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->zzn(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-wide v8, v6, Lcom/google/android/gms/internal/zzaf$zzc;->zzis:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-gtz v0, :cond_b

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_3

    const-string/jumbo v0, "gtm"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "gtm"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-nez v2, :cond_d

    const-string/jumbo v0, "GaExperimentRandom: gtm not a map"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V

    :cond_3
    :goto_5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "GaExperimentRandom: No key"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v2, v12, v8

    if-gez v2, :cond_7

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_2

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    const-string/jumbo v0, "GaExperimentRandom: random range invalid"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    :cond_c
    const-string/jumbo v0, "gtm"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "lifetime"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget-wide v8, v6, Lcom/google/android/gms/internal/zzaf$zzc;->zzis:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v7

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_d
    check-cast v0, Ljava/util/Map;

    const-string/jumbo v2, "lifetime"

    iget-wide v6, v6, Lcom/google/android/gms/internal/zzaf$zzc;->zzis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method
