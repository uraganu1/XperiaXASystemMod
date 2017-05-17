.class public Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;
.super Landroid/app/Activity;
.source "AttachmentPickerActivity.java"


# instance fields
.field private mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

.field private mGetPhotoUri:Landroid/net/Uri;

.field private mIntentUri:Landroid/net/Uri;

.field private mParticipantAddress:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;)Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->attachmentSelected(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startActivity(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mParticipantAddress:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mIntentUri:Landroid/net/Uri;

    .line 53
    return-void
.end method

.method private attachmentSelected(I)V
    .locals 10
    .param p1, "type"    # I

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 207
    :pswitch_0
    :try_start_0
    const-string/jumbo v8, "Unsupported picker type."

    invoke-static {v8}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 174
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getImageDocumentPicker()Landroid/content/Intent;

    move-result-object v5

    .line 176
    .local v5, "pickPictureIntent":Landroid/content/Intent;
    invoke-direct {p0, v5, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startAddMedia(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v5    # "pickPictureIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Activity not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startCapture(I)V

    goto :goto_0

    .line 183
    :pswitch_3
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getVideoDocumentPicker()Landroid/content/Intent;

    move-result-object v6

    .line 184
    .local v6, "pickVideoIntent":Landroid/content/Intent;
    invoke-direct {p0, v6, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startAddMedia(Landroid/content/Intent;I)V

    goto :goto_0

    .line 187
    .end local v6    # "pickVideoIntent":Landroid/content/Intent;
    :pswitch_4
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getAudioPicker()Landroid/content/Intent;

    move-result-object v2

    .line 188
    .local v2, "pickAudioIntent":Landroid/content/Intent;
    invoke-direct {p0, v2, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startAddMedia(Landroid/content/Intent;I)V

    goto :goto_0

    .line 191
    .end local v2    # "pickAudioIntent":Landroid/content/Intent;
    :pswitch_5
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getSketchIntent()Landroid/content/Intent;

    move-result-object v7

    .line 192
    .local v7, "startSketchIntent":Landroid/content/Intent;
    invoke-direct {p0, v7, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startAddMedia(Landroid/content/Intent;I)V

    goto :goto_0

    .line 195
    .end local v7    # "startSketchIntent":Landroid/content/Intent;
    :pswitch_6
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getSingleContactPicker()Landroid/content/Intent;

    move-result-object v3

    .line 196
    .local v3, "pickContactIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 199
    .end local v3    # "pickContactIntent":Landroid/content/Intent;
    :pswitch_7
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getCalendarPicker()Landroid/content/Intent;

    move-result-object v0

    .line 200
    .local v0, "calendarPickerIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 203
    .end local v0    # "calendarPickerIntent":Landroid/content/Intent;
    :pswitch_8
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFileDocumentPicker()Landroid/content/Intent;

    move-result-object v4

    .line 204
    .local v4, "pickFileIntent":Landroid/content/Intent;
    invoke-direct {p0, v4, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startAddMedia(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getImConversationId(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {p1}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromImContactNumber(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v0

    return-object v0
.end method

.method private getRecipientAddress(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "intentUri"    # Landroid/net/Uri;

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "uriString":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "recipientList":Ljava/lang/String;
    const-string/jumbo v5, "[,;]"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "recipients":[Ljava/lang/String;
    const/4 v5, 0x0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 354
    .local v0, "recipient":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "trimmed":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 356
    return-object v3

    .line 353
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "recipient":Ljava/lang/String;
    .end local v3    # "trimmed":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mIntentUri:Landroid/net/Uri;

    .line 88
    iget-object v2, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mIntentUri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->getRecipientAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mParticipantAddress:Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mParticipantAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    sget-boolean v2, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 91
    const-string/jumbo v2, "Finishing since empty recipient address!"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->finish()V

    .line 94
    return-void

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    if-nez v2, :cond_2

    .line 98
    new-instance v2, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    .line 99
    invoke-direct {p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->loadItems()V

    .line 101
    :cond_2
    new-instance v0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$1;-><init>(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;)V

    .line 108
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x7f0b00b8

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "title":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->showAttachmentDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 86
    return-void
.end method

.method private isImFileTransferCapable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 367
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 368
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;

    move-result-object v2

    .line 369
    .local v2, "imPermissionApi":Lcom/sonymobile/jms/permission/ImPermissionApi;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v1

    .line 370
    .local v1, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 371
    :cond_0
    return v4

    .line 373
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 374
    return v4

    .line 377
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->getImConversationId(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v3

    .line 376
    invoke-interface {v2, v3}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToSendInCallOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z

    move-result v3

    return v3
.end method

.method private loadItems()V
    .locals 5

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    .line 129
    new-instance v1, Lcom/sonyericsson/conversations/ui/AttachmentItem;

    const/16 v2, 0xcc

    .line 130
    const v3, 0x7f0b00b0

    .line 131
    const v4, 0x7f0200e0

    .line 129
    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/AttachmentItem;-><init>(III)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->addItem(Lcom/sonyericsson/conversations/ui/AttachmentItem;)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    .line 133
    new-instance v1, Lcom/sonyericsson/conversations/ui/AttachmentItem;

    const/16 v2, 0xcb

    .line 134
    const v3, 0x7f0b00b2

    .line 135
    const v4, 0x7f0200e1

    .line 133
    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/AttachmentItem;-><init>(III)V

    .line 132
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->addItem(Lcom/sonyericsson/conversations/ui/AttachmentItem;)V

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    .line 137
    new-instance v1, Lcom/sonyericsson/conversations/ui/AttachmentItem;

    const/16 v2, 0xcf

    .line 138
    const v3, 0x7f0b00b4

    .line 139
    const v4, 0x7f0200df

    .line 137
    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/AttachmentItem;-><init>(III)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->addItem(Lcom/sonyericsson/conversations/ui/AttachmentItem;)V

    .line 140
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isSketchAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    .line 142
    new-instance v1, Lcom/sonyericsson/conversations/ui/AttachmentItem;

    const/16 v2, 0xd1

    .line 143
    const v3, 0x7f0b00b5

    .line 144
    const v4, 0x7f0200e2

    .line 142
    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/AttachmentItem;-><init>(III)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->addItem(Lcom/sonyericsson/conversations/ui/AttachmentItem;)V

    .line 146
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isVCalendarEnabledPackageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    .line 148
    new-instance v1, Lcom/sonyericsson/conversations/ui/AttachmentItem;

    const/16 v2, 0xd4

    .line 149
    const v3, 0x7f0b017b

    .line 150
    const v4, 0x7f0200dd

    .line 148
    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/AttachmentItem;-><init>(III)V

    .line 147
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->addItem(Lcom/sonyericsson/conversations/ui/AttachmentItem;)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    .line 153
    new-instance v1, Lcom/sonyericsson/conversations/ui/AttachmentItem;

    const/16 v2, 0xd2

    .line 154
    const v3, 0x7f0b017c

    .line 155
    const v4, 0x7f0200db

    .line 153
    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/AttachmentItem;-><init>(III)V

    .line 152
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->addItem(Lcom/sonyericsson/conversations/ui/AttachmentItem;)V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    .line 157
    new-instance v1, Lcom/sonyericsson/conversations/ui/AttachmentItem;

    const/16 v2, 0xd5

    .line 158
    const v3, 0x7f0b00b6

    .line 159
    const v4, 0x7f0200dc

    .line 157
    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/AttachmentItem;-><init>(III)V

    .line 156
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->addItem(Lcom/sonyericsson/conversations/ui/AttachmentItem;)V

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    .line 161
    new-instance v1, Lcom/sonyericsson/conversations/ui/AttachmentItem;

    const/16 v2, 0xcd

    .line 162
    const v3, 0x7f0b00b3

    .line 163
    const v4, 0x7f0200de

    .line 161
    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/AttachmentItem;-><init>(III)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->addItem(Lcom/sonyericsson/conversations/ui/AttachmentItem;)V

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    .line 165
    new-instance v1, Lcom/sonyericsson/conversations/ui/AttachmentItem;

    const/16 v2, 0xce

    .line 166
    const v3, 0x7f0b00b1

    .line 167
    const v4, 0x7f0200e3

    .line 165
    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/AttachmentItem;-><init>(III)V

    .line 164
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->addItem(Lcom/sonyericsson/conversations/ui/AttachmentItem;)V

    .line 127
    return-void
.end method

.method private showAttachmentDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "itemlistener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 114
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$ConversationDialogFragmentDismissable;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$ConversationDialogFragmentDismissable;-><init>()V

    .line 116
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v1, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$2;-><init>(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mAttachmentItemListAdapter:Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    invoke-virtual {v0, v1, p2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "alert-dialog"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private startActivity(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 317
    packed-switch p1, :pswitch_data_0

    .line 325
    :pswitch_0
    const-string/jumbo v0, "Unsupported picker type."

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 319
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startCameraActivity()V

    goto :goto_0

    .line 322
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startVideoActivity()V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0xcc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startAddMedia(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 280
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 279
    :goto_0
    return-void

    .line 284
    :cond_0
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 285
    new-instance v1, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$3;-><init>(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;Landroid/content/Intent;I)V

    .line 283
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_0
.end method

.method private startCameraActivity()V
    .locals 3

    .prologue
    .line 331
    invoke-static {}, Lcom/sonyericsson/conversations/util/MediaUtil;->getPhotoUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mGetPhotoUri:Landroid/net/Uri;

    .line 332
    iget-object v1, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mGetPhotoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 333
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mGetPhotoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getCameraCapture(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 334
    .local v0, "capturePhotoIntent":Landroid/content/Intent;
    const/16 v1, 0xcc

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 330
    .end local v0    # "capturePhotoIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private startCapture(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermissions(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startActivity(I)V

    .line 296
    :goto_0
    return-void

    .line 304
    :cond_0
    new-instance v1, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$4;-><init>(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;I)V

    .line 303
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleMultiplePermissionsRequest(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;)V

    goto :goto_0
.end method

.method private startVideoActivity()V
    .locals 8

    .prologue
    .line 339
    iget-object v4, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mParticipantAddress:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->isImFileTransferCapable(Ljava/lang/String;)Z

    move-result v1

    .line 340
    .local v1, "isImFileTransferCapable":Z
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sonymobile/jms/ImApiHolder;->getApis()Lcom/sonymobile/jms/ImApis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonymobile/jms/ImApis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonymobile/jms/setting/ImSettingApi;->getFileWarningSize()I

    move-result v3

    .line 342
    .local v3, "sizeLimitVideo":I
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 344
    .local v2, "quality":I
    :goto_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v4

    .line 345
    int-to-long v6, v3

    .line 344
    invoke-virtual {v4, v6, v7, v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getVideoCapture(JI)Landroid/content/Intent;

    move-result-object v0

    .line 346
    .local v0, "captureVideoIntent":Landroid/content/Intent;
    const/16 v4, 0xce

    invoke-virtual {p0, v0, v4}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 338
    return-void

    .line 341
    .end local v0    # "captureVideoIntent":Landroid/content/Intent;
    .end local v2    # "quality":I
    .end local v3    # "sizeLimitVideo":I
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v3

    .restart local v3    # "sizeLimitVideo":I
    goto :goto_0

    .line 342
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "quality":I
    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 218
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 222
    const/16 v4, 0xcc

    if-ne p1, v4, :cond_0

    if-nez p3, :cond_0

    .line 223
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "data":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 224
    .restart local p3    # "data":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mGetPhotoUri:Landroid/net/Uri;

    invoke-virtual {p3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 227
    :cond_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    if-nez p3, :cond_3

    .line 228
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 239
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->finish()V

    .line 240
    return-void

    .line 230
    :pswitch_0
    if-eqz p2, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 232
    const v5, 0x7f0b01c5

    .line 233
    const/4 v6, 0x1

    .line 231
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 243
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 253
    :goto_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 254
    .local v0, "fileUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mParticipantAddress:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->isImFileTransferCapable(Ljava/lang/String;)Z

    move-result v2

    .line 255
    .local v2, "isImFileTransferCapable":Z
    if-nez v2, :cond_4

    .line 258
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, "intent":Landroid/content/Intent;
    const-class v4, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 260
    const-string/jumbo v4, "address"

    iget-object v5, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mParticipantAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 262
    const/high16 v4, 0x20000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 264
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->finish()V

    .line 265
    return-void

    .line 247
    .end local v0    # "fileUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isImFileTransferCapable":Z
    :sswitch_0
    invoke-static {p3, p0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->grantPersistablePermissionForDocumentUri(Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_1

    .line 268
    .restart local v0    # "fileUri":Landroid/net/Uri;
    .restart local v2    # "isImFileTransferCapable":Z
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v3, "joynFileTransferServiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "chatID"

    .line 270
    iget-object v5, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mParticipantAddress:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->getImConversationId(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v5

    .line 269
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 272
    const-string/jumbo v4, "request_code"

    .line 271
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 276
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->finish()V

    .line 217
    return-void

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0xd4
        :pswitch_0
    .end packed-switch

    .line 243
    :sswitch_data_0
    .sparse-switch
        0xcb -> :sswitch_0
        0xcd -> :sswitch_0
        0xd5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->requestWindowFeature(I)Z

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->handleIntent(Landroid/content/Intent;)V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    const-string/jumbo v0, "photoUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mGetPhotoUri:Landroid/net/Uri;

    .line 65
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->handleIntent(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const-string/jumbo v0, "photoUri"

    iget-object v1, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->mGetPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method
