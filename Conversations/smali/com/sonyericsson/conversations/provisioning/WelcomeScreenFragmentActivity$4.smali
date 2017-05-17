.class Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$4;
.super Ljava/lang/Object;
.source "WelcomeScreenFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$4;->this$0:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->setWelcomeScreenDisplayed(Z)V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$4;->this$0:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->setResult(I)V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$4;->this$0:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->finish()V

    .line 126
    return-void
.end method
