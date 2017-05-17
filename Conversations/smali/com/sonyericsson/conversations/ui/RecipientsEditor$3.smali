.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap13(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)V

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap13(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)V

    .line 475
    :cond_0
    return-void
.end method
