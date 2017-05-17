.class public Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;
.super Ljava/lang/Object;
.source "LocationOnClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocationUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->mLocationUri:Landroid/net/Uri;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->mContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->mLocationUri:Landroid/net/Uri;

    .line 42
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private createNewContact()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;)V

    .line 82
    .local v0, "task":Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener$CreateContactTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method

.method private viewLocationOnMap(Z)V
    .locals 12
    .param p1, "navigate"    # Z

    .prologue
    const-wide v10, 0x412e848000000000L    # 1000000.0

    .line 68
    iget-object v8, p0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->mLocationUri:Landroid/net/Uri;

    invoke-static {v8, v9}, Lcom/sonyericsson/conversations/util/VCardUtil;->getGeoPoint(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 69
    .local v0, "geoPoint":Lcom/google/android/maps/GeoPoint;
    if-nez v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v8

    int-to-double v8, v8

    div-double v4, v8, v10

    .line 73
    .local v4, "latitude":D
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v8

    int-to-double v8, v8

    div-double v6, v8, v10

    .line 74
    .local v6, "longitude":D
    if-eqz p1, :cond_1

    const-string/jumbo v1, "google.navigation:q="

    .line 75
    .local v1, "googleMapUriString":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 76
    .local v3, "viewLocationUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void

    .line 74
    .end local v1    # "googleMapUriString":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "viewLocationUri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v1, "geo:"

    .restart local v1    # "googleMapUriString":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    packed-switch p2, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 54
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->viewLocationOnMap(Z)V

    goto :goto_0

    .line 57
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->viewLocationOnMap(Z)V

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->createNewContact()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setLocationUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationOnClickListener;->mLocationUri:Landroid/net/Uri;

    .line 45
    return-void
.end method
