.class public Lcom/android/settings/sim/SimSettings$AirplaneMode;
.super Ljava/lang/Object;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AirplaneMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$AirplaneMode$1;
    }
.end annotation


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/sim/SimSettings;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$AirplaneMode;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    new-instance v0, Lcom/android/settings/sim/SimSettings$AirplaneMode$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sim/SimSettings$AirplaneMode$1;-><init>(Lcom/android/settings/sim/SimSettings$AirplaneMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$AirplaneMode;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 667
    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$AirplaneMode;->mContext:Landroid/content/Context;

    .line 666
    return-void
.end method


# virtual methods
.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 671
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$AirplaneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 672
    const-string/jumbo v2, "airplane_mode_on"

    .line 671
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$AirplaneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 677
    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 678
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$AirplaneMode;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 677
    const/4 v3, 0x1

    .line 676
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 675
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$AirplaneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$AirplaneMode;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 681
    return-void
.end method
