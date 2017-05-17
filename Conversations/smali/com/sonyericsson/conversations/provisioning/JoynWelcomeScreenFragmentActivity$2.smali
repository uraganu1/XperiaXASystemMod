.class Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$2;
.super Ljava/lang/Object;
.source "JoynWelcomeScreenFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 108
    iput-object p1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$2;->this$0:Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$2;->this$0:Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->-wrap0(Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;)V

    .line 110
    return-void
.end method
