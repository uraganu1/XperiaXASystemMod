.class public Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;
.super Ljava/lang/Object;
.source "ConversationsDeleteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemovedMessagesInformation"
.end annotation


# instance fields
.field public final mNumberOfJoynRemoved:I

.field public final mNumberOfMessagesRemoved:I

.field public final mNumberOfMmsRemoved:I

.field public final mNumberOfSmsRemoved:I

.field public final mNumberOfXmsRemoved:I


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "numberOfSmsRemoved"    # I
    .param p2, "numberOfMmsRemoved"    # I
    .param p3, "numberOfJoynRemoved"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;->mNumberOfSmsRemoved:I

    .line 43
    iput p2, p0, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;->mNumberOfMmsRemoved:I

    .line 44
    iput p3, p0, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;->mNumberOfJoynRemoved:I

    .line 45
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;->mNumberOfMmsRemoved:I

    iget v1, p0, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;->mNumberOfSmsRemoved:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;->mNumberOfXmsRemoved:I

    .line 46
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;->mNumberOfXmsRemoved:I

    iget v1, p0, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;->mNumberOfJoynRemoved:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;->mNumberOfMessagesRemoved:I

    .line 41
    return-void
.end method
