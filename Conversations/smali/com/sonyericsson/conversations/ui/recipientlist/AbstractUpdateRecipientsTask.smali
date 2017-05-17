.class public abstract Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;
.super Landroid/os/AsyncTask;
.source "AbstractUpdateRecipientsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field protected final mIsAnimate:Z

.field protected final mUpdateRecipientListener:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;ZLcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "isAnimate"    # Z
    .param p4, "updateRecipientListener"    # Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 40
    iput-boolean p3, p0, Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;->mIsAnimate:Z

    .line 41
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;->mUpdateRecipientListener:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    .line 37
    return-void
.end method
