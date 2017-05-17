.class Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$1;
.super Ljava/lang/Object;
.source "JoynWelcomeScreenFragmentActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$1;->this$0:Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 95
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$1;->this$0:Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->-wrap1(Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;I)V

    .line 90
    return-void
.end method
