.class public Lcom/google/android/gms/ads/internal/client/zzl;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field public static zzuq:Ljava/lang/String;


# instance fields
.field private zzup:Lcom/google/android/gms/ads/internal/client/zzm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzuq:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ClientApi;->retainReference()V

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzuq:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "No client jar implementation found."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaK(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzai;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    :goto_1
    return-void

    :cond_0
    :try_start_0
    const-class v0, Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzl;->zzuq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzm;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to instantiate ClientApi class."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzai;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public createAdOverlay(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzfv;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzm;->createAdOverlay(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzfv;

    move-result-object v0

    return-object v0
.end method

.method public createInAppPurchaseManager(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzge;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzup:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzm;->createInAppPurchaseManager(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzge;

    move-result-object v0

    return-object v0
.end method
