.class Lcom/sonyericsson/conversations/settings/SettingsManager$1;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/settings/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/settings/SettingsManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/settings/SettingsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/settings/SettingsManager;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager$1;->this$0:Lcom/sonyericsson/conversations/settings/SettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 64
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager$1;->this$0:Lcom/sonyericsson/conversations/settings/SettingsManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager$1;->this$0:Lcom/sonyericsson/conversations/settings/SettingsManager;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isWelcomeScreenDisplayed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->setJoynWelcomeScreenDisplayed(Z)V

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager$1;->this$0:Lcom/sonyericsson/conversations/settings/SettingsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->setWelcomeScreenDisplayed(Z)V

    .line 63
    :cond_0
    return-void
.end method
