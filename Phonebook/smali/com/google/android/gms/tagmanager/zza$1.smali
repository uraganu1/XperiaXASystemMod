.class Lcom/google/android/gms/tagmanager/zza$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zza$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbcu:Lcom/google/android/gms/tagmanager/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zza$1;->zzbcu:Lcom/google/android/gms/tagmanager/zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzDZ()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza$1;->zzbcu:Lcom/google/android/gms/tagmanager/zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zza;->zza(Lcom/google/android/gms/tagmanager/zza;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "IllegalStateException getting Advertising Id Info"

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "GooglePlayServicesRepairableException getting Advertising Id Info"

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v2, "IOException getting Ad Id Info"

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v2, "GooglePlayServicesNotAvailableException getting Advertising Id Info"

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception v0

    const-string/jumbo v2, "Unknown exception. Could not get the Advertising Id Info."

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
