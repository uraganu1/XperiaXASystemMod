.class public Lcom/google/android/gms/tagmanager/zzbb;
.super Lcom/google/android/gms/tagmanager/zzak;
.source "Unknown"


# static fields
.field private static final ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzad;->zzbM:Lcom/google/android/gms/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbb;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbb;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzak;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzFW()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic zzGB()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/google/android/gms/tagmanager/zzak;->zzGB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzGC()Ljava/util/Set;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/google/android/gms/tagmanager/zzak;->zzGC()Ljava/util/Set;

    move-result-object v0

    return-object v0
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
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzHF()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzHF()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    return-object v0
.end method
