.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retainReference()V
    .locals 1

    const-class v0, Lcom/google/android/gms/ads/internal/ClientApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzuq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createAdOverlay(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzfv;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public createInAppPurchaseManager(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzge;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zze;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/purchase/zze;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
