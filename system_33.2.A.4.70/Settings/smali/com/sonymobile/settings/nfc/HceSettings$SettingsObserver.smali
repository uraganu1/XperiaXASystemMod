.class Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/nfc/HceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/nfc/HceSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/nfc/HceSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/nfc/HceSettings;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    .line 259
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 258
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 265
    sget-boolean v0, Lcom/sonymobile/settings/nfc/HceSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HceSettings"

    const-string/jumbo v1, "Detect changing Default Route"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceSettings;->-get1(Lcom/sonymobile/settings/nfc/HceSettings;)Lcom/sonymobile/settings/nfc/HceBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->updateDefaultRoute()V

    .line 267
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceSettings;->-wrap0(Lcom/sonymobile/settings/nfc/HceSettings;)V

    .line 263
    return-void
.end method
