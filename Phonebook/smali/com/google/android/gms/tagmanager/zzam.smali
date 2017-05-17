.class Lcom/google/android/gms/tagmanager/zzam;
.super Lcom/google/android/gms/tagmanager/zzbv;
.source "Unknown"


# static fields
.field private static final ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzad;->zzcx:Lcom/google/android/gms/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzam;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzam;->ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzbv;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/tagmanager/zzde;Lcom/google/android/gms/tagmanager/zzde;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzde;",
            "Lcom/google/android/gms/tagmanager/zzde;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tagmanager/zzde;->zza(Lcom/google/android/gms/tagmanager/zzde;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
