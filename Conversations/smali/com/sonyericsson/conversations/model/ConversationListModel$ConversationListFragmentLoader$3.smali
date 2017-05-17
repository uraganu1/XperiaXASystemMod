.class Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$3;
.super Ljava/lang/Object;
.source "ConversationListModel.java"

# interfaces
.implements Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->loadInBackgroundJoyn(Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$3;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$3;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$3;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$3;->this$1:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldIgnoreConversationItem(Lcom/sonyericsson/conversations/conversation/ConversationItem;)Z
    .locals 6
    .param p1, "conversationItem"    # Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 333
    invoke-static {}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$3;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v2

    iget-object v3, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 341
    return v0

    .line 337
    :pswitch_0
    iget-object v2, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippet:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 339
    iget-wide v2, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 337
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 339
    goto :goto_0

    :cond_1
    move v0, v1

    .line 337
    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
