.class public Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ConversationPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ViewHolder;->this$1:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

    .line 210
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 209
    return-void
.end method
