.class public Lcom/sonyericsson/conversations/model/AttachmentSummary;
.super Ljava/lang/Object;
.source "AttachmentSummary.java"


# instance fields
.field private mAttachedBodyText:Ljava/lang/String;

.field private mAttachmentCounter:I

.field private mAttachmentType:I

.field private mIsGroupThread:Z

.field private mSenderString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentType:I

    .line 37
    iput v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentCounter:I

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachedBodyText:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mSenderString:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getAttachedBodyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachedBodyText:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachmentType()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentType:I

    return v0
.end method

.method public getInboxIcon()I
    .locals 2

    .prologue
    const v1, 0x7f020052

    .line 116
    iget v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 140
    return v1

    .line 118
    :pswitch_0
    return v1

    .line 120
    :pswitch_1
    const v0, 0x7f0200cb

    return v0

    .line 122
    :pswitch_2
    const v0, 0x7f0200cc

    return v0

    .line 124
    :pswitch_3
    const v0, 0x7f0200cd

    return v0

    .line 126
    :pswitch_4
    const v0, 0x7f0200fe

    return v0

    .line 128
    :pswitch_5
    const v0, 0x7f0200c7

    return v0

    .line 130
    :pswitch_6
    const v0, 0x7f0200c9

    return v0

    .line 132
    :pswitch_7
    const v0, 0x7f0200ca

    return v0

    .line 134
    :pswitch_8
    const v0, 0x7f0200c8

    return v0

    .line 136
    :pswitch_9
    return v1

    .line 138
    :pswitch_a
    return v1

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public getMessageFileTypeIcon()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 169
    const v0, 0x7f020037

    return v0

    .line 153
    :pswitch_0
    const v0, 0x7f0200a8

    return v0

    .line 155
    :pswitch_1
    const v0, 0x7f0200ac

    return v0

    .line 157
    :pswitch_2
    const v0, 0x7f0200ae

    return v0

    .line 159
    :pswitch_3
    const v0, 0x7f0200ab

    return v0

    .line 161
    :pswitch_4
    const v0, 0x7f0200b1

    return v0

    .line 163
    :pswitch_5
    const v0, 0x7f0200b3

    return v0

    .line 165
    :pswitch_6
    const v0, 0x7f0200b6

    return v0

    .line 167
    :pswitch_7
    const v0, 0x7f0200fe

    return v0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNumberOfAttachments()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentCounter:I

    return v0
.end method

.method public getSenderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mIsGroupThread:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mSenderString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getSnippetForEmptyMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "snippet":I
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentCounter:I

    if-ge v1, v2, :cond_1

    .line 188
    :cond_0
    const-string/jumbo v1, ""

    return-object v1

    .line 189
    :cond_1
    iget v1, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentCounter:I

    if-ne v1, v2, :cond_2

    .line 190
    iget v1, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentType:I

    packed-switch v1, :pswitch_data_0

    .line 218
    const v0, 0x7f0b025d

    .line 254
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 192
    :pswitch_0
    const v0, 0x7f0b0256

    .line 193
    goto :goto_0

    .line 195
    :pswitch_1
    const v0, 0x7f0b0256

    .line 196
    goto :goto_0

    .line 198
    :pswitch_2
    const v0, 0x7f0b0257

    .line 199
    goto :goto_0

    .line 201
    :pswitch_3
    const v0, 0x7f0b0258

    .line 202
    goto :goto_0

    .line 204
    :pswitch_4
    const v0, 0x7f0b0259

    .line 205
    goto :goto_0

    .line 207
    :pswitch_5
    const v0, 0x7f0b025a

    .line 208
    goto :goto_0

    .line 210
    :pswitch_6
    const v0, 0x7f0b025b

    .line 211
    goto :goto_0

    .line 213
    :pswitch_7
    const v0, 0x7f0b025c

    .line 214
    goto :goto_0

    .line 222
    :cond_2
    iget v1, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentType:I

    packed-switch v1, :pswitch_data_1

    .line 250
    const v0, 0x7f0b0263

    .line 251
    goto :goto_0

    .line 224
    :pswitch_8
    const v0, 0x7f0b025e

    .line 225
    goto :goto_0

    .line 227
    :pswitch_9
    const v0, 0x7f0b025e

    .line 228
    goto :goto_0

    .line 230
    :pswitch_a
    const v0, 0x7f0b025f

    .line 231
    goto :goto_0

    .line 233
    :pswitch_b
    const v0, 0x7f0b0265

    .line 234
    goto :goto_0

    .line 236
    :pswitch_c
    const v0, 0x7f0b0260

    .line 237
    goto :goto_0

    .line 239
    :pswitch_d
    const v0, 0x7f0b0264

    .line 240
    goto :goto_0

    .line 242
    :pswitch_e
    const v0, 0x7f0b0261

    .line 243
    goto :goto_0

    .line 245
    :pswitch_f
    const v0, 0x7f0b0262

    .line 246
    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 222
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public hasAttachment()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 178
    iget v1, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentCounter:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setAttachedBodyText(Ljava/lang/String;)V
    .locals 1
    .param p1, "attachedBodyText"    # Ljava/lang/String;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachedBodyText:Ljava/lang/String;

    .line 61
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachedBodyText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAttachmentType(I)V
    .locals 0
    .param p1, "attachmentType"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentType:I

    .line 73
    return-void
.end method

.method public setIsGroupThread(Z)V
    .locals 0
    .param p1, "isGroupThread"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mIsGroupThread:Z

    .line 105
    return-void
.end method

.method public setNumberOfAttachments(I)V
    .locals 0
    .param p1, "nbrOfAttachments"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentCounter:I

    .line 81
    return-void
.end method

.method public setSenderString(Ljava/lang/String;)V
    .locals 1
    .param p1, "senderString"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mSenderString:Ljava/lang/String;

    .line 101
    return-void

    .line 102
    :cond_0
    const-string/jumbo v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AttachmentType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->getAttachmentType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/conversations/model/AttachmentSummary;->mAttachmentCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
