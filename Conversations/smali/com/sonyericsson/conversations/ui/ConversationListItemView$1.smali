.class Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;
.super Ljava/lang/Object;
.source "ConversationListItemView.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnComplete1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationListItemView;->populateListItem(Landroid/content/Context;Landroid/database/Cursor;ILcom/sonyericsson/conversations/ui/util/DateFormatter;)V
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
        "Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

.field final synthetic val$adapterMode:I

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field final synthetic val$downloadFailedCount:I

.field final synthetic val$unreadCount:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListItemView;IIILcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationListItemView;
    .param p2, "val$adapterMode"    # I
    .param p3, "val$unreadCount"    # I
    .param p4, "val$downloadFailedCount"    # I
    .param p5, "val$conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p6, "val$address"    # Ljava/lang/String;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->val$adapterMode:I

    iput p3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->val$unreadCount:I

    iput p4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->val$downloadFailedCount:I

    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iput-object p6, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)V
    .locals 7
    .param p1, "bundle"    # Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->val$adapterMode:I

    iget v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->val$unreadCount:I

    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->val$downloadFailedCount:I

    .line 491
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->val$address:Ljava/lang/String;

    move-object v1, p1

    .line 490
    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->-wrap0(Lcom/sonyericsson/conversations/ui/ConversationListItemView;Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;IIILcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "bundle"    # Ljava/lang/Object;

    .prologue
    .line 489
    check-cast p1, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;

    .end local p1    # "bundle":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$1;->onComplete(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)V

    return-void
.end method
