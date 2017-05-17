.class Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$1;
.super Ljava/lang/Object;
.source "WelcomeScreenFragmentActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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
    .line 86
    iput-object p1, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$1;->this$0:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 103
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 89
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$1;->this$0:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->-wrap2(Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;I)V

    .line 95
    if-nez p1, :cond_1

    .line 96
    const-string/jumbo v0, "Welcome Screen Attachments"

    invoke-static {v0}, Lcom/sonymobile/conversations/analytics/Analytics;->pushAppView(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 98
    const-string/jumbo v0, "Welcome Screen Stickers"

    invoke-static {v0}, Lcom/sonymobile/conversations/analytics/Analytics;->pushAppView(Ljava/lang/String;)V

    goto :goto_0
.end method
