.class public Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;
.super Ljava/lang/Object;
.source "DeleteConversationsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteConversationsResult"
.end annotation


# instance fields
.field private mDeletedConversations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberOfDeletedConversations:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;->mDeletedConversations:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;->mNumberOfDeletedConversations:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;->mDeletedConversations:Ljava/util/Collection;

    .line 74
    return-void
.end method


# virtual methods
.method public getNumberOfDeletedConversations()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;->mNumberOfDeletedConversations:I

    return v0
.end method
