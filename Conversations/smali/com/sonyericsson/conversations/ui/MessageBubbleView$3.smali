.class Lcom/sonyericsson/conversations/ui/MessageBubbleView$3;
.super Ljava/lang/Object;
.source "MessageBubbleView.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageBubbleView;->onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 2
    .param p1, "isGranted"    # Z

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get0(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/util/ClickFilter;

    move-result-object v0

    .line 256
    const/16 v1, 0xc8

    .line 255
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->executeAndFilter(I)V

    .line 253
    :cond_0
    return-void
.end method
