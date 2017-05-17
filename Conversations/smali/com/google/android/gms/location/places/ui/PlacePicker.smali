.class public Lcom/google/android/gms/location/places/ui/PlacePicker;
.super Lcom/google/android/gms/location/places/ui/zza;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/location/places/ui/zza;-><init>()V

    return-void
.end method

.method public static getPlace(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/location/places/Place;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/ui/zza;->getPlace(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    return-object v0
.end method
