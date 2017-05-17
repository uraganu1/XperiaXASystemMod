.class Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "ConversationRecipientActionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactDropdownPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .line 140
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->setModal(Z)V

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->setPromptPosition(I)V

    .line 139
    return-void
.end method


# virtual methods
.method public show()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->-get2(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 148
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->setInputMethodMode(I)V

    .line 149
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 146
    return-void
.end method
