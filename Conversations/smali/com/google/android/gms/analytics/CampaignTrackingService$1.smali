.class Lcom/google/android/gms/analytics/CampaignTrackingService$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/CampaignTrackingService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzOP:I

.field final synthetic zzOR:Lcom/google/android/gms/analytics/internal/zzaf;

.field final synthetic zzOZ:Lcom/google/android/gms/analytics/CampaignTrackingService;

.field final synthetic zzt:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/CampaignTrackingService;Lcom/google/android/gms/analytics/internal/zzaf;Landroid/os/Handler;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzOZ:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iput-object p2, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzOR:Lcom/google/android/gms/analytics/internal/zzaf;

    iput-object p3, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzt:Landroid/os/Handler;

    iput p4, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzOP:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzOZ:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iget-object v1, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzOR:Lcom/google/android/gms/analytics/internal/zzaf;

    iget-object v2, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzt:Landroid/os/Handler;

    iget v3, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$1;->zzOP:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/CampaignTrackingService;->zza(Lcom/google/android/gms/analytics/internal/zzaf;Landroid/os/Handler;I)V

    return-void
.end method
