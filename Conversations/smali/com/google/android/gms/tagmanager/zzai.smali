.class Lcom/google/android/gms/tagmanager/zzai;
.super Lcom/google/android/gms/tagmanager/zzak;
.source "Unknown"


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final zzbhO:Lcom/google/android/gms/tagmanager/zzcp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzad;->zzbI:Lcom/google/android/gms/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzai;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzcp;)V
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/zzai;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzak;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzai;->zzbhO:Lcom/google/android/gms/tagmanager/zzcp;

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
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzai;->zzbhO:Lcom/google/android/gms/tagmanager/zzcp;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcp;->zzHe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzHF()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    goto :goto_0
.end method
