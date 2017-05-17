.class public Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;,
        Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;,
        Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues:[I


# instance fields
.field private mAttachmentResult:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

.field private mIsAudio:Z

.field private mIsCalendar:Z

.field private mIsContact:Z

.field private mIsFile:Z

.field private mIsImage:Z

.field private mIsLocation:Z

.field private mIsSticker:Z

.field private mIsVideo:Z

.field private mText:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->-com_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->-com_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->values()[Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->AUDIO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_ALL_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->DRM_PROTECTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->MESSAGE_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->TEXT_TOO_LONG:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_NOT_SUPPORTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_RESOLUTION_UNSUPPORTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->-com_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;I)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;
    .locals 1
    .param p1, "result"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->getAttachmentResult(I)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Lcom/sonyericsson/conversations/ui/Composer;Z)I
    .locals 1
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p2, "keepGeoTag"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->addImage(Lcom/sonyericsson/conversations/ui/Composer;Z)I

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mUri:Landroid/net/Uri;

    .line 50
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsSticker:Z

    .line 51
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsImage:Z

    .line 52
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsVideo:Z

    .line 53
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsAudio:Z

    .line 54
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsCalendar:Z

    .line 55
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsContact:Z

    .line 56
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsLocation:Z

    .line 57
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsFile:Z

    .line 58
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mText:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mAttachmentResult:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    .line 72
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mAttachmentResult:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    .line 73
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->-get9(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mUri:Landroid/net/Uri;

    .line 74
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->-get6(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsSticker:Z

    .line 75
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->-get4(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsImage:Z

    .line 76
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->-get7(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsVideo:Z

    .line 77
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->-get0(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsAudio:Z

    .line 78
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->-get2(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsCalendar:Z

    .line 79
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->-get1(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsContact:Z

    .line 80
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->-get5(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsLocation:Z

    .line 81
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->-get3(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsFile:Z

    .line 82
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->-get8(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mText:Ljava/lang/String;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;)V
    .locals 0
    .param p1, "builder"    # Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;)V

    return-void
.end method

.method private addAudio(Lcom/sonyericsson/conversations/ui/Composer;)I
    .locals 7
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 314
    const/4 v3, 0x0

    .line 316
    .local v3, "errorText":I
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/conversations/ui/Composer;->addAudio(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return v3

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e":Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->-getcom_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;->getContentStatus()Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 335
    :pswitch_0
    const v3, 0x7f0b013d

    goto :goto_0

    .line 327
    :pswitch_1
    const v3, 0x7f0b00e3

    .line 328
    goto :goto_0

    .line 331
    :pswitch_2
    const v3, 0x7f0b00bb

    .line 332
    goto :goto_0

    .line 321
    .end local v2    # "e":Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
    :catch_1
    move-exception v0

    .line 322
    .local v0, "cr":Lcom/android/mms/ContentRestrictionException;
    const v3, 0x7f0b00bb

    goto :goto_0

    .line 319
    .end local v0    # "cr":Lcom/android/mms/ContentRestrictionException;
    :catch_2
    move-exception v1

    .line 320
    .local v1, "e":Lcom/google/android/mms/MmsException;
    const v3, 0x7f0b013d

    goto :goto_0

    .line 317
    .end local v1    # "e":Lcom/google/android/mms/MmsException;
    :catch_3
    move-exception v4

    .line 318
    .local v4, "se":Ljava/lang/SecurityException;
    const v3, 0x7f0b00e3

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addCalendar(Lcom/sonyericsson/conversations/ui/Composer;Landroid/content/Context;)I
    .locals 4
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "errorText":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mUri:Landroid/net/Uri;

    invoke-static {p2, v3}, Lcom/sonyericsson/conversations/util/VCalendarUtil;->createVCalendarFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 345
    .local v2, "internalUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    const v1, 0x7f0b01c5

    goto :goto_0
.end method

.method private addContact(Lcom/sonyericsson/conversations/ui/Composer;Landroid/content/Context;)I
    .locals 6
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 353
    const/4 v1, 0x0

    .line 355
    .local v1, "errorText":I
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 356
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;Z)V

    .line 369
    :cond_0
    :goto_0
    return v1

    .line 357
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mText:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 358
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mText:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->getConcatComposerText(Lcom/sonyericsson/conversations/ui/Composer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    const v1, 0x7f0b013d

    .line 366
    invoke-static {p2, v1, v5}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 363
    .local v2, "se":Ljava/lang/SecurityException;
    const v1, 0x7f0b00bf

    .line 366
    invoke-static {p2, v1, v5}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 364
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method private addFile(Lcom/sonyericsson/conversations/ui/Composer;Landroid/content/Context;)I
    .locals 6
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 373
    const/4 v1, 0x0

    .line 375
    .local v1, "errorText":I
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;Z)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    :goto_0
    return v1

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, "se":Ljava/lang/SecurityException;
    const v1, 0x7f0b00bf

    .line 384
    invoke-static {p2, v1, v5}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 378
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    const v1, 0x7f0b013d

    .line 384
    invoke-static {p2, v1, v5}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method private addImage(Lcom/sonyericsson/conversations/ui/Composer;Z)I
    .locals 12
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "keepGeoTag"    # Z

    .prologue
    .line 175
    const/4 v9, 0x0

    .line 177
    .local v9, "errorText":I
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mUri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsSticker:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;ZZZZ)V

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsLocation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mText:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->getConcatComposerText(Lcom/sonyericsson/conversations/ui/Composer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_1
    :goto_0
    return v9

    .line 202
    :catch_0
    move-exception v6

    .line 203
    .local v6, "e":Lcom/android/mms/ExceedMessageSizeException;
    const v9, 0x7f0b00bc

    goto :goto_0

    .line 200
    .end local v6    # "e":Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v7

    .line 201
    .local v7, "e":Ljava/lang/Exception;
    const v9, 0x7f0b013d

    goto :goto_0

    .line 188
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 189
    .local v10, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    const-string/jumbo v0, "Could not resize image enough to fit the message"

    invoke-static {v0, v10}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    invoke-virtual {v10}, Lcom/sonyericsson/conversations/util/ResizeException;->getResizeError()I

    move-result v8

    .line 191
    .local v8, "errorCode":I
    packed-switch v8, :pswitch_data_0

    .line 197
    const v9, 0x7f0b013d

    .line 198
    goto :goto_0

    .line 194
    :pswitch_0
    const v9, 0x7f0b013e

    .line 195
    goto :goto_0

    .line 183
    .end local v8    # "errorCode":I
    .end local v10    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    :catch_3
    move-exception v11

    .line 186
    .local v11, "se":Ljava/lang/SecurityException;
    const-string/jumbo v0, "Could not add media to MMS due to DRM protection"

    invoke-static {v0, v11}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    const v9, 0x7f0b00e1

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private addVideo(Lcom/sonyericsson/conversations/ui/Composer;)I
    .locals 7
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 282
    const/4 v3, 0x0

    .line 284
    .local v3, "errorText":I
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/conversations/ui/Composer;->addVideo(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return v3

    .line 292
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->-getcom_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;->getContentStatus()Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 307
    const v3, 0x7f0b013d

    goto :goto_0

    .line 295
    :pswitch_0
    const v3, 0x7f0b00e2

    .line 296
    goto :goto_0

    .line 298
    :pswitch_1
    const v3, 0x7f0b00ba

    .line 299
    goto :goto_0

    .line 303
    :pswitch_2
    const v3, 0x7f0b018c

    .line 304
    goto :goto_0

    .line 289
    .end local v2    # "e":Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
    :catch_1
    move-exception v0

    .line 290
    .local v0, "e":Lcom/android/mms/ContentRestrictionException;
    const v3, 0x7f0b00ba

    goto :goto_0

    .line 287
    .end local v0    # "e":Lcom/android/mms/ContentRestrictionException;
    :catch_2
    move-exception v1

    .line 288
    .local v1, "e":Lcom/google/android/mms/MmsException;
    const v3, 0x7f0b013d

    goto :goto_0

    .line 285
    .end local v1    # "e":Lcom/google/android/mms/MmsException;
    :catch_3
    move-exception v4

    .line 286
    .local v4, "se":Ljava/lang/SecurityException;
    const v3, 0x7f0b00e2

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getAskGeoTag(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 212
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mUri:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->hasLocationInformation(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 213
    invoke-static {v2}, Lcom/android/mms/MmsConfig;->shallWeAskWhetherGeotagShallBeIncluded(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 212
    if-eqz v2, :cond_0

    .line 215
    const/4 v1, 0x1

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Conversations"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const-string/jumbo v2, "Geotag dialog failed to open."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAttachmentResult(I)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mAttachmentResult:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;->OK:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    iput-object v1, v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;->code:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mAttachmentResult:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    iput p1, v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;->errorTextCode:I

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mAttachmentResult:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    return-object v0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mAttachmentResult:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;->ERROR:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    iput-object v1, v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;->code:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    goto :goto_0
.end method

.method private getComposerText(Lcom/sonyericsson/conversations/ui/Composer;)Ljava/lang/String;
    .locals 1
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getConcatComposerText(Lcom/sonyericsson/conversations/ui/Composer;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->getComposerText(Lcom/sonyericsson/conversations/ui/Composer;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "composerText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string/jumbo v2, "\n"

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 169
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private handleAddImage(Lcom/sonyericsson/conversations/ui/Composer;Landroid/app/Fragment;)I
    .locals 10
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 226
    const/4 v8, 0x0

    .line 227
    .local v8, "errorText":I
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v3

    .local v3, "settingsManager":Lcom/sonyericsson/conversations/settings/SettingsManager;
    move-object v4, p2

    .line 228
    check-cast v4, Lcom/sonyericsson/conversations/ui/EditorFragment;

    .line 229
    .local v4, "editorFragment":Lcom/sonyericsson/conversations/ui/EditorFragment;
    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->getAskGeoTag(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const-string/jumbo v6, "geotag_dialog"

    .line 231
    .local v6, "GEOTAG_DIALOG_TAG":Ljava/lang/String;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 232
    .local v2, "saveSetting":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v7, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v7}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 233
    .local v7, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v9

    .line 234
    .local v9, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f0b022c

    invoke-virtual {v7, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(I)V

    .line 235
    const v1, 0x7f0b022d

    invoke-virtual {v7, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setMessage(I)V

    .line 236
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sonyericsson/conversations/settings/SettingsManager;Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/ui/Composer;)V

    const v1, 0x7f0b0165

    invoke-virtual {v7, v1, v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 246
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$2;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sonyericsson/conversations/settings/SettingsManager;Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 256
    .local v0, "negativeButton":Landroid/content/DialogInterface$OnClickListener;
    const v1, 0x7f0b0166

    invoke-virtual {v7, v1, v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 258
    new-instance v1, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$3;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$3;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 257
    const v5, 0x7f0b022f

    invoke-virtual {v7, v5, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setCheckBox(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 264
    const v1, 0x7f0b022e

    invoke-virtual {v7, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setChangeLater(I)V

    .line 265
    new-instance v1, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$4;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$4;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sonyericsson/conversations/settings/SettingsManager;Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v7, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 273
    const-string/jumbo v1, "geotag_dialog"

    invoke-virtual {v9, v7, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 274
    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 278
    .end local v0    # "negativeButton":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "saveSetting":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v6    # "GEOTAG_DIALOG_TAG":Ljava/lang/String;
    .end local v7    # "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    .end local v9    # "transaction":Landroid/app/FragmentTransaction;
    :goto_0
    return v8

    .line 276
    :cond_0
    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->shallGeotagBeIncluded(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->addImage(Lcom/sonyericsson/conversations/ui/Composer;Z)I

    move-result v8

    goto :goto_0
.end method


# virtual methods
.method public addAttachment(Lcom/sonyericsson/conversations/ui/Composer;Landroid/app/Fragment;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;
    .locals 2
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 408
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsVideo:Z

    if-eqz v1, :cond_0

    .line 409
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->addVideo(Lcom/sonyericsson/conversations/ui/Composer;)I

    move-result v0

    .line 425
    .local v0, "result":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->getAttachmentResult(I)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    move-result-object v1

    return-object v1

    .line 410
    .end local v0    # "result":I
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsAudio:Z

    if-eqz v1, :cond_1

    .line 411
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->addAudio(Lcom/sonyericsson/conversations/ui/Composer;)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0

    .line 412
    .end local v0    # "result":I
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsImage:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsSticker:Z

    if-eqz v1, :cond_3

    .line 413
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->handleAddImage(Lcom/sonyericsson/conversations/ui/Composer;Landroid/app/Fragment;)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0

    .line 414
    .end local v0    # "result":I
    :cond_3
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsLocation:Z

    if-eqz v1, :cond_4

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->handleAddImage(Lcom/sonyericsson/conversations/ui/Composer;Landroid/app/Fragment;)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0

    .line 416
    .end local v0    # "result":I
    :cond_4
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsCalendar:Z

    if-eqz v1, :cond_5

    .line 417
    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->addCalendar(Lcom/sonyericsson/conversations/ui/Composer;Landroid/content/Context;)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0

    .line 418
    .end local v0    # "result":I
    :cond_5
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsContact:Z

    if-eqz v1, :cond_6

    .line 419
    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->addContact(Lcom/sonyericsson/conversations/ui/Composer;Landroid/content/Context;)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0

    .line 420
    .end local v0    # "result":I
    :cond_6
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->mIsFile:Z

    if-eqz v1, :cond_7

    .line 421
    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;->addFile(Lcom/sonyericsson/conversations/ui/Composer;Landroid/content/Context;)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0

    .line 423
    .end local v0    # "result":I
    :cond_7
    const v0, 0x7f0b0270

    .restart local v0    # "result":I
    goto :goto_0
.end method
