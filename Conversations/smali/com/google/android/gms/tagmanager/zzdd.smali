.class abstract Lcom/google/android/gms/tagmanager/zzdd;
.super Lcom/google/android/gms/tagmanager/zzak;
.source "Unknown"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzak;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzFW()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public zzP(Ljava/util/Map;)Lcom/google/android/gms/internal/zzag$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/zzag$zza;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzdd;->zzR(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzHF()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzR(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;)V"
        }
    .end annotation
.end method
