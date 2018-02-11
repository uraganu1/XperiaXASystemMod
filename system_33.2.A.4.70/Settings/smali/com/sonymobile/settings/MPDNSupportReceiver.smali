.class public Lcom/sonymobile/settings/MPDNSupportReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MPDNSupportReceiver.java"


# static fields
.field private static oldMultiplePDNMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/settings/MPDNSupportReceiver;->oldMultiplePDNMode:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 21
    const v5, 0x11200bf

    .line 20
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 27
    const-string/jumbo v5, "tether_dun_required"

    const/4 v6, 0x2

    .line 26
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 29
    .local v2, "secureSetting":I
    const-string/jumbo v4, "com.sonymobile.intent.action.Telephony.MPDN_SUPPORT_CHANGED_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    if-ne v2, v7, :cond_1

    .line 32
    const-string/jumbo v4, "mpdnSupport"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 34
    .local v1, "newMultiplePDNMode":Z
    if-nez v1, :cond_0

    sget-boolean v4, Lcom/sonymobile/settings/MPDNSupportReceiver;->oldMultiplePDNMode:Z

    if-eqz v4, :cond_0

    .line 35
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/sonymobile/settings/MPDNSupportActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v3, "sendIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.sonymobile.intent.action.Telephony.MPDN_SUPPORT_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string/jumbo v4, "mpdnSupport"

    .line 38
    const-string/jumbo v5, "mpdnSupport"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 37
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    .end local v3    # "sendIntent":Landroid/content/Intent;
    :cond_0
    sput-boolean v1, Lcom/sonymobile/settings/MPDNSupportReceiver;->oldMultiplePDNMode:Z

    .line 19
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "newMultiplePDNMode":Z
    .end local v2    # "secureSetting":I
    :cond_1
    return-void
.end method
