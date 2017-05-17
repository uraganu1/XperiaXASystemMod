.class public Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;
.super Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;
.source "StarredMessageListCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_StarredMessageListCursorAdapter$StarredMessageTypeSwitchesValues:[I


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_ui_StarredMessageListCursorAdapter$StarredMessageTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->-com_sonyericsson_conversations_ui_StarredMessageListCursorAdapter$StarredMessageTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->-com_sonyericsson_conversations_ui_StarredMessageListCursorAdapter$StarredMessageTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;->values()[Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;->IM:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;->UNKNOWN:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;->XMS:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->-com_sonyericsson_conversations_ui_StarredMessageListCursorAdapter$StarredMessageTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;IZ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "mode"    # I
    .param p4, "autoRequery"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->mActivity:Landroid/app/Activity;

    .line 49
    return-void
.end method

.method private getStarredMessageItem(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/starstatus/StarredMessageItem;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->getStarredMessageType(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;

    move-result-object v0

    .line 123
    .local v0, "messageType":Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->-getcom_sonyericsson_conversations_ui_StarredMessageListCursorAdapter$StarredMessageTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    const-string/jumbo v2, "Failed to get starred message item of type "

    .line 129
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x0

    return-object v1

    .line 125
    :pswitch_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;->fromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/starstatus/StarredMessageItem;

    move-result-object v1

    return-object v1

    .line 127
    :pswitch_1
    invoke-static {p1}, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;->fromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/starstatus/StarredMessageItem;

    move-result-object v1

    return-object v1

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getStarredMessageType(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->isXmsCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;->XMS:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;

    return-object v0

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->isImCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;->IM:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;

    return-object v0

    .line 142
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;->UNKNOWN:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$StarredMessageType;

    return-object v0
.end method

.method private isImCursor(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    .line 152
    .local v1, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    if-nez v1, :cond_0

    .line 153
    return v3

    .line 156
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const/4 v2, 0x1

    return v2

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    return v3
.end method

.method private isXmsCursor(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 146
    const-string/jumbo v1, "thread_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, "threadIdColIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 76
    const v9, 0x7f0d001d

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 77
    .local v8, "title":Landroid/widget/TextView;
    const v9, 0x7f0d0097

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 80
    .local v5, "snippet":Landroid/widget/TextView;
    const v9, 0x7f0d001c

    .line 79
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 82
    .local v0, "contactBadge":Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->getStarredMessageItem(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/starstatus/StarredMessageItem;

    move-result-object v6

    .line 83
    .local v6, "starredMessageItem":Lcom/sonyericsson/conversations/starstatus/StarredMessageItem;
    invoke-interface {v6}, Lcom/sonyericsson/conversations/starstatus/StarredMessageItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 84
    .local v3, "messageUri":Landroid/net/Uri;
    invoke-interface {v6}, Lcom/sonyericsson/conversations/starstatus/StarredMessageItem;->getText()Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "text":Ljava/lang/String;
    invoke-interface {v6}, Lcom/sonyericsson/conversations/starstatus/StarredMessageItem;->getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    .line 88
    .local v2, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    .line 93
    .local v1, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    .line 96
    .local v4, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->mActivity:Landroid/app/Activity;

    .line 97
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v9

    sget-object v11, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v9, v11, :cond_1

    const/4 v9, 0x1

    .line 96
    :goto_0
    invoke-static {v10, v4, v8, v0, v9}, Lcom/sonyericsson/conversations/ui/util/ConversationItemDecorator;->setTitleAndImage(Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;Z)V

    .line 100
    .end local v4    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_0
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v9, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;

    invoke-direct {v9, p0, v2, v3}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;-><init>(Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/net/Uri;)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void

    .line 97
    .restart local v4    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 65
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 66
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, p3}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v1, v0}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 71
    :cond_1
    return-object p2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030037

    .line 58
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
