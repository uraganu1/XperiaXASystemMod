.class Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "HceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/nfc/HceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/nfc/HceSettings;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/nfc/HceSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/nfc/HceSettings;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/nfc/HceSettings;Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/nfc/HceSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;-><init>(Lcom/sonymobile/settings/nfc/HceSettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceSettings;->-get0(Lcom/sonymobile/settings/nfc/HceSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 223
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceSettings;->-get0(Lcom/sonymobile/settings/nfc/HceSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 228
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceSettings;->-get0(Lcom/sonymobile/settings/nfc/HceSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceSettings;->-get0(Lcom/sonymobile/settings/nfc/HceSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 238
    return-void
.end method
