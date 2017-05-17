.class Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder$1;
.super Ljava/lang/Object;
.source "ConversationPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)V
    .locals 0
    .param p1, "this$2"    # Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder$1;->this$2:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder$1;->this$2:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->this$1:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-get1(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder$1;->this$2:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->this$1:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->dismiss()V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder$1;->this$2:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->this$1:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-get1(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder$1;->this$2:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->-get1(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;->onConversationSelected(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 240
    :cond_0
    return-void
.end method
