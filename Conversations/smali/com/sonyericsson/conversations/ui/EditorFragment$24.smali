.class Lcom/sonyericsson/conversations/ui/EditorFragment$24;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 2001
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$24;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activeSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 2004
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$24;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap6(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 2007
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$24;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap4(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 2003
    return-void
.end method
