.class public Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;
.super Landroid/app/IntentService;
.source "JoynFileTransferService.java"


# static fields
.field private static synthetic -com_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues:[I


# instance fields
.field private mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;


# direct methods
.method private static synthetic -getcom_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->-com_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->-com_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->values()[Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_ASK:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->NEVER_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->-com_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;Landroid/net/Uri;)V
    .locals 0
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->sendJoynMessage(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "JoynFileTransferService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private checkResizeOptionAndSendJoynMessage(Landroid/net/Uri;)V
    .locals 3
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 156
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/jms/setting/ImSettingApi;->getFileResizeOption()Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    move-result-object v0

    .line 158
    .local v0, "resizeOption":Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
    invoke-static {}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->-getcom_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown file resize option detected \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string/jumbo v2, "\'"

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 160
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->sendJoynMessage(Landroid/net/Uri;)V

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->estimateMediaSizeAndSendJoynMessage(Landroid/net/Uri;)V

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->resizeMediaAndSendJoynMessage(Landroid/net/Uri;)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private estimateMediaSizeAndSendJoynMessage(Landroid/net/Uri;)V
    .locals 10
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 238
    const-wide/16 v2, 0x0

    .line 240
    .local v2, "originalSize":J
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    .line 241
    .local v6, "size":J
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    .line 238
    const-wide/16 v8, 0x0

    .line 242
    add-long v2, v8, v6

    .line 245
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->getFileUriList(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 247
    invoke-static {v8, v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getDefaultCompressionEstimate(Landroid/content/Context;Ljava/util/List;)J

    move-result-wide v4

    .line 249
    .local v4, "resizedSize":J
    cmp-long v8, v2, v4

    if-lez v8, :cond_1

    .line 251
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/sonyericsson/conversations/enrichedcalling/ResizeDialogActivity;

    invoke-direct {v1, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "chatID"

    iget-object v9, p0, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 253
    const-string/jumbo v8, "android.intent.extra.STREAM"

    invoke-virtual {v1, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    const-string/jumbo v8, "original_size"

    invoke-virtual {v1, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 255
    const-string/jumbo v8, "resized_size"

    invoke-virtual {v1, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 256
    const/high16 v8, 0x10000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->startActivity(Landroid/content/Intent;)V

    .line 237
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->sendJoynMessage(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method static getFileUriList(Landroid/net/Uri;)Ljava/util/List;
    .locals 2
    .param p0, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v0, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v0
.end method

.method private handleAddMedia(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 113
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/DrmUtil;->isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Content must not be sent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->isResizeableMedia(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->sendJoynMessage(Landroid/net/Uri;)V

    .line 119
    return-void

    .line 122
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->checkResizeOptionAndSendJoynMessage(Landroid/net/Uri;)V

    .line 112
    return-void
.end method

.method private handleAddVCalendar(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "vCalendarUri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 145
    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/util/VCalendarUtil;->createVCalendarFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 149
    .end local v0    # "vCalendarUri":Landroid/net/Uri;
    :cond_0
    if-nez v0, :cond_1

    .line 150
    return-void

    .line 152
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->sendJoynMessage(Landroid/net/Uri;)V

    .line 142
    return-void
.end method

.method private handleAddVCard(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    new-array v0, v7, [J

    .line 127
    .local v0, "contactIds":[J
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v0, v6

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 128
    invoke-static {v4, v0, v6, v7}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->getVcardUri(Landroid/content/Context;[JIZ)Landroid/os/Bundle;

    move-result-object v2

    .line 130
    .local v2, "vCardBundle":Landroid/os/Bundle;
    const-string/jumbo v4, "sendContact_error_code"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, "errorText":I
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v7}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 133
    return-void

    .line 135
    :cond_0
    const-string/jumbo v4, "sendContact_vcard_uri"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 136
    .local v3, "vCardUri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 137
    return-void

    .line 139
    :cond_1
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->sendJoynMessage(Landroid/net/Uri;)V

    .line 125
    return-void
.end method

.method private resizeMediaAndSendJoynMessage(Landroid/net/Uri;)V
    .locals 6
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "mimeType":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    invoke-static {v1}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v3, "videoUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 204
    new-instance v5, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService$1;-><init>(Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;)V

    .line 203
    invoke-static {v4, v3, v5}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeVideo(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;)V

    .line 194
    .end local v3    # "videoUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-static {v1}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImage(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 227
    .local v2, "resizedUri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->sendJoynMessage(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/file/UnableToResizeImageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/file/UnableToDecodeImageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v2    # "resizedUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to resize image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->sendJoynMessage(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private sendJoynMessage(Landroid/net/Uri;)V
    .locals 4
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 177
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImFileApi()Lcom/sonymobile/jms/file/ImFileApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sonymobile/jms/file/ImFileApi;->isFileBiggerThanMaxSize(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 179
    const v2, 0x7f0b01f1

    const/4 v3, 0x1

    .line 178
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 181
    return-void

    .line 185
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/messages/ImUserMessageSenderUtil;->sendImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to send ImFileMessage for ImConversationId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    const-string/jumbo v2, ", and fileUri = "

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 73
    const-string/jumbo v3, "chatID"

    .line 72
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/jms/conversation/ImConversationId;

    iput-object v3, p0, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 74
    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 76
    .local v0, "fileUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    return-void

    .line 80
    :cond_1
    const-string/jumbo v3, "request_code"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 81
    .local v1, "requestCode":I
    if-nez v1, :cond_3

    .line 82
    const-string/jumbo v3, "resize_required"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 83
    .local v2, "resizeRequired":Z
    if-eqz v2, :cond_2

    .line 84
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->resizeMediaAndSendJoynMessage(Landroid/net/Uri;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->sendJoynMessage(Landroid/net/Uri;)V

    goto :goto_0

    .line 91
    .end local v2    # "resizeRequired":Z
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 71
    :goto_1
    :pswitch_0
    return-void

    .line 99
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->handleAddMedia(Landroid/net/Uri;)V

    goto :goto_1

    .line 102
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->handleAddVCard(Landroid/net/Uri;)V

    goto :goto_1

    .line 105
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->handleAddVCalendar(Landroid/net/Uri;)V

    goto :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
