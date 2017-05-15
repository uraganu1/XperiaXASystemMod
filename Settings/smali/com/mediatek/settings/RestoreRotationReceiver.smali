.class public Lcom/mediatek/settings/RestoreRotationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RestoreRotationReceiver.java"


# static fields
.field public static sRestoreRetore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/settings/RestoreRotationReceiver;->sRestoreRetore:Z

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "RestoreRotationReceiver_IPO"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string/jumbo v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 55
    if-nez v1, :cond_0

    .line 57
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED_FOR_MULTIUSER_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 60
    const-string/jumbo v4, "accelerometer_rotation_restore"

    .line 58
    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/mediatek/settings/RestoreRotationReceiver;->sRestoreRetore:Z

    .line 62
    sget-boolean v1, Lcom/mediatek/settings/RestoreRotationReceiver;->sRestoreRetore:Z

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 64
    const-string/jumbo v4, "accelerometer_rotation"

    .line 63
    invoke-static {v1, v4, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 66
    const-string/jumbo v2, "accelerometer_rotation_restore"

    .line 65
    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 52
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 58
    goto :goto_0
.end method
