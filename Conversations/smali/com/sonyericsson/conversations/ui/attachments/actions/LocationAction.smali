.class public Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;
.super Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
.source "LocationAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;
    }
.end annotation


# instance fields
.field private mLocationImageTask:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;

.field private mPlace:Lcom/google/android/gms/location/places/Place;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;)Lcom/google/android/gms/location/places/Place;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->mPlace:Lcom/google/android/gms/location/places/Place;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;Landroid/net/Uri;)V
    .locals 0
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->addLocation(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->startLocationActivity()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;-><init>()V

    return-void
.end method

.method private addLocation(Landroid/net/Uri;)V
    .locals 10
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 151
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->mPlace:Lcom/google/android/gms/location/places/Place;

    invoke-interface {v6}, Lcom/google/android/gms/location/places/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 152
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->mPlace:Lcom/google/android/gms/location/places/Place;

    invoke-interface {v6}, Lcom/google/android/gms/location/places/Place;->getAddress()Ljava/lang/CharSequence;

    move-result-object v0

    .line 153
    .local v0, "address":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->mPlace:Lcom/google/android/gms/location/places/Place;

    invoke-interface {v6}, Lcom/google/android/gms/location/places/Place;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 154
    .local v4, "name":Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v2, "locationDetails":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->mPlace:Lcom/google/android/gms/location/places/Place;

    invoke-interface {v6}, Lcom/google/android/gms/location/places/Place;->getAttributions()Ljava/lang/CharSequence;

    move-result-object v5

    .line 156
    .local v5, "thirdPartyAttributions":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 157
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 160
    check-cast v0, Ljava/lang/String;

    .end local v0    # "address":Ljava/lang/CharSequence;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_1
    if-eqz v5, :cond_2

    .line 163
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_2
    const-string/jumbo v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->generateUrlPrefix(DD)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "locationUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, v3}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->buildLocationAttachment(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v7

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->showKeyboardAfterAction()Z

    move-result v8

    .line 168
    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    .line 150
    :cond_3
    return-void
.end method

.method public static buildLocationAttachment(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 2
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "locationUrl"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setUri(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setText(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setLocation()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->build()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v1

    return-object v1
.end method

.method private getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {v2, p1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getGooglePlacePicker(Landroid/app/Activity;)Landroid/content/Intent;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 144
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Caught error, not able to get Intent for googlePlacePicker"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePermissionsAndStartLocationActivity()V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 97
    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 96
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->startLocationActivity()V

    .line 95
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;)V

    .line 108
    .local v0, "callback":Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 109
    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 108
    invoke-static {v1, v2, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_0
.end method

.method private startLocationActivity()V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, "locationIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public handleActivityResult(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 118
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/location/places/ui/PlacePicker;->getPlace(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->mPlace:Lcom/google/android/gms/location/places/Place;

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->mPlace:Lcom/google/android/gms/location/places/Place;

    if-nez v0, :cond_1

    .line 123
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->mLocationImageTask:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->mLocationImageTask:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;->cancel(Z)Z

    .line 128
    :cond_2
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->mLocationImageTask:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->mLocationImageTask:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$LocationImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method

.method public handleButtonClicked()V
    .locals 5

    .prologue
    .line 76
    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->GET_LOCATION:Lcom/sonyericsson/conversations/ui/AddMediaType;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    .line 79
    .local v2, "googleApiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 80
    .local v1, "conResult":I
    if-nez v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->handlePermissionsAndStartLocationActivity()V

    .line 75
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    const/4 v3, -0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;II)Z

    goto :goto_0

    .line 88
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Google api availability error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 63
    .local v0, "result":I
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 67
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Location Picker not available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 68
    return v3
.end method
