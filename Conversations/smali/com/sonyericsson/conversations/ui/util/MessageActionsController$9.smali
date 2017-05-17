.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$9;
.super Ljava/lang/Thread;
.source "MessageActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1568
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$9;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$9;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->saveVCardContact()V

    .line 1569
    return-void
.end method
