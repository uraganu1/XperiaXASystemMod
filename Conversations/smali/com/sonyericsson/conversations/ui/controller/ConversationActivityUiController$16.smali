.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->askWheterToIncludeGeotag(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

.field final synthetic val$imageUri:Landroid/net/Uri;

.field final synthetic val$saveSetting:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/net/Uri;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p2, "val$imageUri"    # Landroid/net/Uri;
    .param p3, "val$saveSetting"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 2481
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->val$imageUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->val$saveSetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2484
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->val$imageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;->val$saveSetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap15(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;ZLandroid/net/Uri;Z)V

    .line 2483
    return-void
.end method
