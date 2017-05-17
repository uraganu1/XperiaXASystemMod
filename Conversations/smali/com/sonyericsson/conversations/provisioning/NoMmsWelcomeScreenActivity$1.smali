.class Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity$1;
.super Ljava/lang/Object;
.source "NoMmsWelcomeScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity$1;->this$0:Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->setWelcomeScreenDisplayed(Z)V

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity$1;->this$0:Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;->setResult(I)V

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity$1;->this$0:Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;->finish()V

    .line 39
    return-void
.end method
