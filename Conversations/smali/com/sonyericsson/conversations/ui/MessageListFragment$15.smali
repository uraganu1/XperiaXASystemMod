.class Lcom/sonyericsson/conversations/ui/MessageListFragment$15;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnComplete1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->setWallpaper(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
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
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .param p2, "val$view"    # Landroid/view/View;

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$15;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$15;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "wallpaper"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$15;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1234
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "wallpaper"    # Ljava/lang/Object;

    .prologue
    .line 1234
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "wallpaper":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment$15;->onComplete(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
