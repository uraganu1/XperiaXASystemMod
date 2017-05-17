.class public Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;
.super Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;
.source "ConversationListCursorAdapter.java"


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# instance fields
.field private mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMode:I


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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
    sput-object v0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "mode"    # I
    .param p4, "flags"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p4}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 92
    iput p3, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mMode:I

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "mode"    # I
    .param p4, "autoRequery"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p4}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 84
    iput p3, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mMode:I

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    .line 80
    return-void
.end method

.method public static asConversationId(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 11
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 121
    const-string/jumbo v9, "thread_id"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 122
    .local v6, "threadId":J
    const-string/jumbo v9, "chat_key"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "chatKey":Ljava/lang/String;
    const-string/jumbo v9, "address"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "address":Ljava/lang/String;
    const-string/jumbo v9, "recipient_ids"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "recipientIds":Ljava/lang/String;
    new-instance v8, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;

    invoke-direct {v8, v0, v5, v6, v7}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 127
    .local v8, "threadIdInfo":Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;
    const-string/jumbo v9, "conversation_type"

    .line 126
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 128
    .local v4, "conversationTypeIndex":I
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v9

    aget-object v3, v9, v4

    .line 129
    .local v3, "conversationType":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v9

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 144
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Unsupported conversation type \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 145
    const-string/jumbo v10, "\'"

    .line 144
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 143
    invoke-static {v9}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 146
    sget-object v9, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->CONVERSATION_ID_NONE:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v9

    .line 131
    :pswitch_0
    invoke-static {v1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromImConversationIdOnly(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v9

    return-object v9

    .line 135
    :pswitch_1
    invoke-static {v1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v9

    .line 134
    invoke-static {v6, v7, v9}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdAndImConversationId(JLcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v9

    return-object v9

    .line 137
    :pswitch_2
    invoke-static {v8}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdInfo(Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v9

    return-object v9

    .line 140
    :pswitch_3
    const-string/jumbo v9, "conversation_key"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 139
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "conversationKey":Ljava/lang/String;
    invoke-static {v2}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromKeyOnly(Ljava/lang/String;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v9

    return-object v9

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 98
    instance-of v1, p1, Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    .line 100
    .local v0, "listItem":Lcom/sonyericsson/conversations/ui/ConversationListItemView;
    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mMode:I

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->populateListItem(Landroid/content/Context;Landroid/database/Cursor;ILcom/sonyericsson/conversations/ui/util/DateFormatter;)V

    .line 97
    .end local v0    # "listItem":Lcom/sonyericsson/conversations/ui/ConversationListItemView;
    :cond_0
    return-void
.end method

.method public checkAnyConversationStarred(ILandroid/util/SparseBooleanArray;)Z
    .locals 5
    .param p1, "headerCount"    # I
    .param p2, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;

    .prologue
    const/4 v4, 0x1

    .line 178
    if-eqz p2, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 180
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 181
    const-string/jumbo v3, "star_status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 182
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 183
    add-int v3, p1, v1

    invoke-virtual {p2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 185
    return v4

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public close()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public getConversationIdAtPosition(I)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 114
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->asConversationId(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    return-object v1

    .line 115
    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->CONVERSATION_ID_NONE:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v1
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 153
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    :cond_0
    const-wide/16 v4, 0x0

    return-wide v4

    .line 153
    :cond_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const-string/jumbo v3, "conversation_key"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, "idxConversationKey":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 156
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "conversationKey":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v4, v3

    return-wide v4

    .line 161
    .end local v1    # "conversationKey":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    return-wide v4
.end method

.method public isConversationStarred(I)Z
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 196
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 197
    const-string/jumbo v2, "star_status"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 198
    .local v1, "index":I
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 200
    return v3

    .line 204
    .end local v1    # "index":I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    .line 106
    if-nez p2, :cond_0

    .line 107
    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public switchCursorAdapterMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mMode:I

    .line 172
    return-void
.end method
