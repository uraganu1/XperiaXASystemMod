.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$4;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnComplete1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/forklift/OnComplete1",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

.field final synthetic val$itemLayout:Lcom/sonyericsson/conversations/ui/MessageItemLayout;

.field final synthetic val$separator:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageItemLayout;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    .param p2, "val$itemLayout"    # Lcom/sonyericsson/conversations/ui/MessageItemLayout;
    .param p3, "val$separator"    # Ljava/lang/String;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$4;->val$itemLayout:Lcom/sonyericsson/conversations/ui/MessageItemLayout;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$4;->val$separator:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "hasWallpaper"    # Ljava/lang/Boolean;

    .prologue
    .line 532
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$4;->val$itemLayout:Lcom/sonyericsson/conversations/ui/MessageItemLayout;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$4;->val$separator:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$4;->val$separator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 533
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 532
    invoke-static {v1, v2, v3, v0, v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-wrap2(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageItemLayout;Ljava/lang/CharSequence;ZZ)V

    .line 531
    return-void

    .line 532
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "hasWallpaper"    # Ljava/lang/Object;

    .prologue
    .line 531
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "hasWallpaper":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$4;->onComplete(Ljava/lang/Boolean;)V

    return-void
.end method
