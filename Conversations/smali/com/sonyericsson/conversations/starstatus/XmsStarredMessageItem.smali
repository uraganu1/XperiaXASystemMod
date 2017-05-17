.class public Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;
.super Ljava/lang/Object;
.source "XmsStarredMessageItem.java"

# interfaces
.implements Lcom/sonyericsson/conversations/starstatus/StarredMessageItem;


# instance fields
.field private mBodyText:Ljava/lang/String;

.field private mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mSubject:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v1, "sub"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string/jumbo v6, "sub_cs"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 34
    invoke-static {v1, v6}, Lcom/sonyericsson/conversations/util/TextUtil;->decodeRawString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;->mSubject:Ljava/lang/String;

    .line 37
    const-string/jumbo v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;->mBodyText:Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "thread_id"

    .line 39
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 41
    .local v4, "threadId":J
    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdOnly(J)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 43
    invoke-static {p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->getIdFromCursor(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 45
    .local v2, "rowid":J
    const-string/jumbo v1, "transport_type"

    .line 44
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "msgType":Ljava/lang/String;
    const-string/jumbo v1, "sms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;->mUri:Landroid/net/Uri;

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string/jumbo v1, "mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/starstatus/StarredMessageItem;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 30
    new-instance v0, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method


# virtual methods
.method public getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;->mBodyText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;->mBodyText:Ljava/lang/String;

    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/starstatus/XmsStarredMessageItem;->mUri:Landroid/net/Uri;

    return-object v0
.end method
