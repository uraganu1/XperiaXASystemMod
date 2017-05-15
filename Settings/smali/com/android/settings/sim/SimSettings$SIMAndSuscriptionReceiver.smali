.class public Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;
.super Ljava/lang/Object;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SIMAndSuscriptionReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver$1;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/sim/SimSettings;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    const-string/jumbo v0, "SIMAndSuscriptionReceiver"

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->TAG:Ljava/lang/String;

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 625
    new-instance v0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver$1;-><init>(Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 639
    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->mContext:Landroid/content/Context;

    .line 640
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 641
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    return-void
.end method


# virtual methods
.method public register()V
    .locals 3

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 645
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 649
    return-void
.end method
