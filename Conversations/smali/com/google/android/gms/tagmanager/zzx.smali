.class Lcom/google/android/gms/tagmanager/zzx;
.super Lcom/google/android/gms/tagmanager/zzdd;
.source "Unknown"


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final VALUE:Ljava/lang/String;

.field private static final zzbiL:Ljava/lang/String;


# instance fields
.field private final zzbhN:Lcom/google/android/gms/tagmanager/DataLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzad;->zzcg:Lcom/google/android/gms/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzx;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzih:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzx;->VALUE:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzes:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzx;->zzbiL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer;)V
    .locals 4

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/zzx;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/zzx;->VALUE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzdd;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzx;->zzbhN:Lcom/google/android/gms/tagmanager/DataLayer;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzag$zza;)V
    .locals 2

    .prologue
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzHz()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzHE()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzx;->zzbhN:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->zzfX(Ljava/lang/String;)V

    return-void

    :cond_2
    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzag$zza;)V
    .locals 3

    .prologue
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzHz()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdf;->zzl(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_3
    return-void

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzx;->zzbhN:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public zzR(Ljava/util/Map;)V
    .locals 1
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

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/zzx;->VALUE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzx;->zzb(Lcom/google/android/gms/internal/zzag$zza;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzx;->zzbiL:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzx;->zza(Lcom/google/android/gms/internal/zzag$zza;)V

    return-void
.end method