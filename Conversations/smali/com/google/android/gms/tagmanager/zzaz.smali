.class Lcom/google/android/gms/tagmanager/zzaz;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method private static zzK(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzaz;->zzL(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    return-object v0
.end method

.method static zzL(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_2

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "JSONArrays are not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "JSON nulls are not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast p0, Lorg/json/JSONObject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzaz;->zzL(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static zzgi(Ljava/lang/String;)Lcom/google/android/gms/internal/zzrs$zzc;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzaz;->zzK(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzrs$zzc;->zzHK()Lcom/google/android/gms/internal/zzrs$zzd;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    iget-object v3, v1, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzrs$zzd;->zzHN()Lcom/google/android/gms/internal/zzrs$zzc;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzrs$zza;->zzHH()Lcom/google/android/gms/internal/zzrs$zzb;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzae;->zzfR:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/zzag$zza;->zzjz:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzrs$zzb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;)Lcom/google/android/gms/internal/zzrs$zzb;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzae;->zzfG:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzn;->zzFZ()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzdf;->zzgt(Ljava/lang/String;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzrs$zzb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;)Lcom/google/android/gms/internal/zzrs$zzb;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzn;->zzGa()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/zzag$zza;->zzjA:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzrs$zzb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;)Lcom/google/android/gms/internal/zzrs$zzb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzrs$zzb;->zzHJ()Lcom/google/android/gms/internal/zzrs$zza;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzrs$zzd;->zzc(Lcom/google/android/gms/internal/zzrs$zza;)Lcom/google/android/gms/internal/zzrs$zzd;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
