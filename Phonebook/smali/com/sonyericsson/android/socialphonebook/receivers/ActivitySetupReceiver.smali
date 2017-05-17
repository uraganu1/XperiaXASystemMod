.class public Lcom/sonyericsson/android/socialphonebook/receivers/ActivitySetupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivitySetupReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->createActivitySetupIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 24
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 22
    return-void
.end method
