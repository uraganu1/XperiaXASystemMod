.class public Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;
.super Lcom/google/android/gms/location/places/ui/zza$zza;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/ui/PlacePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-string/jumbo v0, "com.google.android.gms.location.places.ui.PICK_PLACE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/ui/zza$zza;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "gmscore_client_jar_version"

    sget v2, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1}, Lcom/google/android/gms/location/places/ui/zza$zza;->build(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
