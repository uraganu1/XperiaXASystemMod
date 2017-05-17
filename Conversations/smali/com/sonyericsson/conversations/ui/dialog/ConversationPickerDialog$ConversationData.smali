.class Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;
.super Ljava/lang/Object;
.source "ConversationPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationData"
.end annotation


# instance fields
.field public mConversationItem:Lcom/sonyericsson/conversations/conversation/ConversationItem;

.field public mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public mSecondaryText:Ljava/lang/String;

.field public mTitleText:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationItem;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationItem"    # Lcom/sonyericsson/conversations/conversation/ConversationItem;
    .param p3, "titleText"    # Landroid/text/SpannableStringBuilder;
    .param p4, "secondaryText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mConversationItem:Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .line 168
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mParticipants:Ljava/util/List;

    .line 169
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mTitleText:Landroid/text/SpannableStringBuilder;

    .line 170
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mSecondaryText:Ljava/lang/String;

    .line 166
    return-void
.end method
