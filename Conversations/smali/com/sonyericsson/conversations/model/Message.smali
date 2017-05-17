.class public abstract Lcom/sonyericsson/conversations/model/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field public box:I

.field public date:J

.field public deliveryStatus:I

.field protected mContext:Landroid/content/Context;

.field protected mId:J

.field protected mPriority:I

.field protected mRead:Z

.field protected mUri:Landroid/net/Uri;

.field public starStatus:I

.field public type:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/Message;->mId:J

    .line 105
    iput v2, p0, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    .line 107
    iput v2, p0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/model/Message;->mPriority:I

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    .line 128
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "projectionType"    # Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-static {p2}, Lcom/sonyericsson/conversations/model/MessageUtil;->getIdFromCursor(Landroid/database/Cursor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/conversations/model/Message;->mId:J

    .line 115
    const-string/jumbo v1, "read"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/Message;->mRead:Z

    .line 116
    const-string/jumbo v0, "star_status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    const-string/jumbo v0, "star_status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    .line 120
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->COMMON:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    if-ne p3, v0, :cond_2

    .line 121
    const-string/jumbo v0, "delivery_status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    const-string/jumbo v0, "delivery_status"

    .line 122
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    .line 111
    :cond_2
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 196
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 198
    iget v1, p0, Lcom/sonyericsson/conversations/model/Message;->box:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 199
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->clearConversationsCache()V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/model/Message;->setUri(Landroid/net/Uri;)V

    .line 193
    :cond_1
    return-void
.end method

.method public abstract getAttachmentType(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/AttachmentSummary;
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirection()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 158
    iget v1, p0, Lcom/sonyericsson/conversations/model/Message;->box:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/sonyericsson/conversations/model/Message;->mPriority:I

    return v0
.end method

.method public abstract getRawPriority()I
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    packed-switch v0, :pswitch_data_0

    .line 270
    iget v0, p0, Lcom/sonyericsson/conversations/model/Message;->box:I

    packed-switch v0, :pswitch_data_1

    .line 289
    :pswitch_0
    const-string/jumbo v0, ""

    return-object v0

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    .line 263
    const v1, 0x7f0b007a

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    .line 266
    const v1, 0x7f0b004a

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 272
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    .line 273
    const v1, 0x7f0b0078

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 275
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    .line 276
    const v1, 0x7f0b007f

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 278
    :pswitch_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    .line 279
    const v1, 0x7f0b0079

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 281
    :pswitch_6
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    .line 282
    const v1, 0x7f0b007d

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 284
    :pswitch_7
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    .line 285
    const v1, 0x7f0b007e

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 260
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/Message;->mRead:Z

    return v0
.end method

.method public isReceivedMessage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 336
    iget v1, p0, Lcom/sonyericsson/conversations/model/Message;->box:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSentMessage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 344
    iget v1, p0, Lcom/sonyericsson/conversations/model/Message;->box:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStored()Z
    .locals 4

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/Message;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrgent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 324
    iget v1, p0, Lcom/sonyericsson/conversations/model/Message;->mPriority:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public refreshDeliveryStatusField(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 354
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 314
    iput p1, p0, Lcom/sonyericsson/conversations/model/Message;->mPriority:I

    .line 313
    return-void
.end method

.method public setStarStatus(I)V
    .locals 0
    .param p1, "newStatus"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    .line 327
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/Message;->mUri:Landroid/net/Uri;

    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/Message;->mId:J

    .line 180
    :goto_0
    return-void

    .line 186
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/Message;->mId:J

    goto :goto_0
.end method
