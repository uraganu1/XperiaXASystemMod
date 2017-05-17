.class public Lcom/google/android/gms/ads/internal/overlay/zze;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    .locals 3

    .prologue
    iget v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEJ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzNb:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "shouldCallOnOverlayOpened"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzne;->isAtLeastL()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzir;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEC:Lcom/google/android/gms/ads/internal/overlay/zzg;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEB:Lcom/google/android/gms/ads/internal/client/zza;

    if-nez v0, :cond_2

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbz()Lcom/google/android/gms/ads/internal/overlay/zza;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEA:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEI:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/overlay/zzp;)Z

    return-void

    :cond_2
    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEB:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    goto :goto_2

    :cond_3
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method
