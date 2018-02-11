.class public Lcom/mediatek/beam/BeamShareTask;
.super Ljava/lang/Object;
.source "BeamShareTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/beam/BeamShareTask$BeamShareTaskMetaData;,
        Lcom/mediatek/beam/BeamShareTask$Direction;
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/String;

.field private mDoneBytes:J

.field private mId:I

.field private mMimeType:Ljava/lang/String;

.field private mModifiedDate:J

.field private mState:I

.field private mTotalBytes:J

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mModifiedDate:J

    .line 135
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    .line 136
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/beam/BeamShareTask;->mType:I

    .line 137
    const-string/jumbo v0, "state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/beam/BeamShareTask;->mState:I

    .line 140
    const-string/jumbo v0, "data"

    .line 139
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareTask;->mData:Ljava/lang/String;

    .line 142
    const-string/jumbo v0, "mime"

    .line 141
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareTask;->mMimeType:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, "total"

    .line 144
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mTotalBytes:J

    .line 147
    const-string/jumbo v0, "done"

    .line 146
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mDoneBytes:J

    .line 150
    const-string/jumbo v0, "modified"

    .line 149
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mModifiedDate:J

    .line 133
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareTask;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/mediatek/beam/BeamShareTask$Direction;
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/mediatek/beam/BeamShareTask;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 206
    sget-object v0, Lcom/mediatek/beam/BeamShareTask$Direction;->out:Lcom/mediatek/beam/BeamShareTask$Direction;

    return-object v0

    .line 201
    :pswitch_0
    sget-object v0, Lcom/mediatek/beam/BeamShareTask$Direction;->in:Lcom/mediatek/beam/BeamShareTask$Direction;

    return-object v0

    .line 204
    :pswitch_1
    sget-object v0, Lcom/mediatek/beam/BeamShareTask$Direction;->out:Lcom/mediatek/beam/BeamShareTask$Direction;

    return-object v0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareTask;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedDate()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mModifiedDate:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/mediatek/beam/BeamShareTask;->mState:I

    return v0
.end method

.method public getTaskUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "null id task can\'t get uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    sget-object v0, Lcom/mediatek/beam/BeamShareTask$BeamShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    iget v1, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mTotalBytes:J

    return-wide v0
.end method
