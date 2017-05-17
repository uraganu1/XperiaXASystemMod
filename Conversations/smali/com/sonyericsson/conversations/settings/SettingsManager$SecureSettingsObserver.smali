.class Lcom/sonyericsson/conversations/settings/SettingsManager$SecureSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/settings/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecureSettingsObserver"
.end annotation


# instance fields
.field private mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/conversations/settings/SettingsManager;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "settingsManager"    # Lcom/sonyericsson/conversations/settings/SettingsManager;

    .prologue
    .line 248
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 249
    iput-object p2, p0, Lcom/sonyericsson/conversations/settings/SettingsManager$SecureSettingsObserver;->mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    .line 247
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/settings/SettingsManager;)V
    .locals 1
    .param p1, "settingsManager"    # Lcom/sonyericsson/conversations/settings/SettingsManager;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/conversations/settings/SettingsManager$SecureSettingsObserver;-><init>(Landroid/os/Handler;Lcom/sonyericsson/conversations/settings/SettingsManager;)V

    .line 243
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager$SecureSettingsObserver;->mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->onDefaultSmsPackageChanged()V

    .line 253
    return-void
.end method
