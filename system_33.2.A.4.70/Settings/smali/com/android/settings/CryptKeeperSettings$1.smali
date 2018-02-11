.class Lcom/android/settings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 68
    const-string/jumbo v8, "level"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 69
    .local v3, "level":I
    const-string/jumbo v8, "plugged"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 71
    .local v5, "plugged":I
    const-string/jumbo v8, "invalid_charger"

    .line 70
    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, "invalidCharger":I
    const/16 v8, 0x50

    if-lt v3, v8, :cond_2

    const/4 v4, 0x1

    .line 74
    .local v4, "levelOk":Z
    :goto_0
    if-nez v4, :cond_0

    .line 75
    const-string/jumbo v8, "userdebug"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 77
    const-string/jumbo v8, "debug.crypt.ignore-batt-level"

    .line 76
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 82
    .end local v4    # "levelOk":Z
    :cond_0
    and-int/lit8 v8, v5, 0x7

    if-eqz v8, :cond_4

    .line 83
    if-nez v1, :cond_3

    const/4 v6, 0x1

    .line 86
    .local v6, "pluggedOk":Z
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_5

    const/4 v2, 0x1

    .line 89
    .local v2, "isOwner":Z
    :goto_2
    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v8}, Lcom/android/settings/CryptKeeperSettings;->-get1(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    .end local v2    # "isOwner":Z
    :goto_3
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v8}, Lcom/android/settings/CryptKeeperSettings;->-get2(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v10

    if-eqz v6, :cond_7

    move v8, v9

    :goto_4
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v8}, Lcom/android/settings/CryptKeeperSettings;->-get0(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v8

    if-eqz v4, :cond_8

    :goto_5
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .end local v1    # "invalidCharger":I
    .end local v3    # "level":I
    .end local v5    # "plugged":I
    .end local v6    # "pluggedOk":Z
    :cond_1
    return-void

    .line 73
    .restart local v1    # "invalidCharger":I
    .restart local v3    # "level":I
    .restart local v5    # "plugged":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "levelOk":Z
    goto :goto_0

    .line 83
    .end local v4    # "levelOk":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "pluggedOk":Z
    goto :goto_1

    .line 82
    .end local v6    # "pluggedOk":Z
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "pluggedOk":Z
    goto :goto_1

    .line 86
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isOwner":Z
    goto :goto_2

    :cond_6
    move v2, v7

    .line 89
    goto :goto_3

    .end local v2    # "isOwner":Z
    :cond_7
    move v8, v7

    .line 90
    goto :goto_4

    :cond_8
    move v9, v7

    .line 91
    goto :goto_5
.end method
